import { spawn } from "node:child_process";
import * as os from "node:os";
import * as path from "node:path";
import type { ExtensionAPI } from "@oh-my-pi/pi-coding-agent";

// Source: https://github.com/logseq-cldwalker/beep-boop/blob/master/sounds/pillsbury_success.mp3
const SOUND = path.join(os.homedir(), ".omp/agent/sounds/pillsbury_success.mp3");

export default function pillsburySuccess(pi: ExtensionAPI): void {
	pi.on("agent_end", (event, ctx) => {
		// Main session only, and only when the run has truly finished
		// (not a tool-loop continuation or a wait on background jobs).
		if (ctx.agent?.kind === "sub") return;
		const e = event as { willContinue?: boolean; awaitingAsyncWork?: boolean };
		if (e.willContinue || e.awaitingAsyncWork) return;

		const child = spawn("afplay", [SOUND], { detached: true, stdio: "ignore" });
		child.on("error", () => {});
		child.unref();
	});
}
