*vo_readme.txt*   VimOutliner 0.3.1 for Vim 6.1+       *vo* *vimoutliner*

Contents

    LICENSE                                                      |vo-license|
    VERSION                                                      |vo-version|
    INSTALLING AND TESTING VIMOUTLINER                           |vo-install|
        Manual method                                     |vo-manual-install|
        Semiautomatic method                            |vo-semiauto-install|
        Testing                                                  |vo-testing|
    USING VIMOUTLINER ON OTHER FILE TYPES                    |vo-other-files|
    TROUBLESHOOTING                                      |vo-troubleshooting|
    VIMOUTLINER PHILOSOPHY                                    |vo-philosophy|
    RUNNING VIMOUTLINER                                          |vo-running|
        What are the comma comma commands                        |vo-command|
        How do you perform basic VimOutliner activities       |vo-activities|
    CAUTIONS!!!                                                 |vo-cautions|
    OTHER INFORMATION                                         |vo-other-info|

-------------------------------------------------------------------------
LICENSE                                                      *vo-license*

    VimOutliner Copyright (C) 2001, 2003 by Steve Litt
    Licensed under the GNU General Public License (GPL), version 2
    Absolutely no warranty, see COPYING file for details.
    VimOutliner is licensed under the GNU GPL license.
    
    If your distro doesn't come with this file
        HTML: http://www.gnu.org/copyleft/gpl.html
        Text: http://www.gnu.org/copyleft/gpl.txt 

-------------------------------------------------------------------------
VERSION                                                      *vo-version*

    Version 0.3.1
    Extensively updated by Noel Henson
    Second major revision of VimOutliner 
    Released 6/09/2003
   
    Added Features:
        body text
        .vimoutlinerrc
	     Enables you to place user specified Vim config in your
	     Vimoutliner configuration.
        Improved collapse
        Expand/collapse by level (,,1 thru ,,9 and ,,0)
        Date and time stamping (,,d and ,,t)

-------------------------------------------------------------------------
INSTALLING AND TESTING VIMOUTLINER                           *vo-install*

    How do I install VimOutliner?
    	Manual Method			|vo-manual-install|
    	Semiautomatic Method		|vo-semiauto-install|
    	Testing				|vo-testing|

        Manual method                                 *vo-manual-install*

            mkdir $HOME/.vim
            mkdir $HOME/.vimoutliner
            Make a temporary directory and cd to it
                Call it $TEMPDIR
                    It need not be an actual environment variable.
                    $TEMPDIR is just a documentation name for this directory
            Download vimoutliner.0.3.1.tar.gz into $TEMPDIR
            tar xzvf vimoutliner.0.3.1.tar.gz
            cp -Rp $TEMPDIR/ftplugin $HOME/.vim
            cp -Rp $TEMPDIR/syntax $HOME/.vim
            ls $HOME/.vim/filetype.vim
            If $HOME/.vim/filetype.vim does not exist:
                cp $TEMPDIR/filetype/filetype.vim $HOME/.vim
            Else If $HOME/.vim/filetype.vim exists:
                cat $TEMPDIR/filetype/filetype.vim >> $HOME/.vim/filetype.vim
            cp -Rp $TEMPDIR/bin $HOME/bin
	    Start Vim and enter:
	        :helptags $HOME/.vim/doc
		(end the line with a <CR>)
            At this point, VimOutliner should be functional
	    Type "help vo" to get started
            
        Semiautomatic method                        *vo-semiauto-install*

	     The semiautomatic method relies on the fact that all
	     relevant directories are below the home directory. The
	     tarball untars most files in their correct directories.

            cd
            mkdir $HOME/.vimoutliner
            Download vimoutliner.0.3.1.tar.gz into your home directory
            tar xzvf vimoutliner.0.3.1.tar.gz
                This installs:
                    $HOME/.vim/plugins/vo_base.vim
                    $HOME/.vim/syntax/vo_base.vim
            ls $HOME/.vim/filetype.vim
            If $HOME/.vim/filetype.vim does not exist:
                cp $HOME/filetype/filetype.vim $HOME/.vim
            Else If $HOME/.vim/filetype.vim exists:
                cat $HOME/filetype/filetype.vim >> $HOME/.vim/filetype.vim
	    Start Vim and enter:
	        :helptags $HOME/.vim/doc
		(end the line with a <CR>)
            At this point, VimOutliner should be functional
	    Type "help vo" to get started
            

    How do I initially test VimOutliner?                     *vo-testing*

        rm $HOME/vo_test.otl
        gvim $HOME/vo_test.otl
            or vim $HOME/vo_test.otl
        Verify the following:
            Tabs indent the text
            Different indent levels are different colors
            Lines starting with a colon and space word-wrap
		 Lines starting with colons are body text. They should
		 word wrap and should be a special color (typically
		 green, but it can vary). Verify that paragraphs of body
		 text can be reformatted with the Vim gq commands.
        Verify interoutline linking
            Place the following two lines in vo_test.otl:
                _tag_newfile
                    $HOME/vo_newfile.otl
	      Note that in the preceding, the 2nd line should be indented
	      from the first
            Run the following command:
                $HOME/bin/vo_maketags.pl $HOME/vo_test.otl | less
            The preceding command builds $HOME/.vimoutliner/vo_tags.tag
            In $HOME/vo_test.otl
                Cursor to the _tag_newfile marker
                Press Ctrl+K
                    You should be brought to $HOME/vo_newfile.otl 
                Press Ctrl+N
                    You should be brought back to $HOME/vo_test.otl 
                Note:
                    Ctrl+K is a VimOutliner synonym for Ctrl+]
                    Ctrl+N is a VimOutliner synonym for Ctrl+T

-------------------------------------------------------------------------
USING VIMOUTLINER ON OTHER FILE TYPES                    *vo-other-files*

    How do I use VimOutliner on non .otl files

        Overview
	     Previous VimOutliner versions used the ol script to invoke
	     VimOutliner. As of VimOutliner 0.3.0, the ol script is no
	     longer necessary nor provided. Instead, VimOutliner is now a
	     Vim plugin, so Vim does all the work.
            
	     This makes VimOutliner much simpler to use in most cases,
	     but Vim plugins are file extension based, meaning that if
	     you want to use VimOutliner on a file extension other than
	     .otl, you must declare that file extension in
	     $HOME/.vim/filetype.otl. In this section we'll use the .emdl
	     extension (Easy Menu Definition Language) as an example.

        To enable VimOutliner work with .emdl files, do this:
            vim $HOME/.vim/filetype.vim
            Right below the line reading:
                au! BufRead,BufNewFile *.otl        setfiletype vo_base
            Insert the following line:
                au! BufRead,BufNewFile *.emdl        setfiletype vo_base
            Save and exit
            Test with the following:
                gvim $HOME/vo_test.emdl
            You should get
                level colors,
                body text (lines starting with colon)
                comma comma commands (try ,,2 and ,,1)

-------------------------------------------------------------------------
TROUBLESHOOTING                                      *vo-troubleshooting*

    Troubleshooting

        I can't switch between colon based and space based body text
            See next question

        My ,,b and ,,B don't do anything. How do I fix it?
            vim $HOME/.vim/ftplugin/vo_base.vim
            Search for use_space_colon
            Change the =1 to =0 and save
            Rerun Vim, and ,,b and ,,B should work.

        I don't get vimoutliner features on files of extension .whatever
            vim $HOME/filetype.vim
            Right below the line reading:
                au! BufRead,BufNewFile *.otl             setfiletype vo_base
            Insert the following line:
                au! BufRead,BufNewFile *.whatever        setfiletype vo_base
            Save and exit

-------------------------------------------------------------------------
VIMOUTLINER PHILOSOPHY                                    *vo-philosophy*

    Authoring Speed
	VimOutliner is an outline processor with many of the same
	features as Grandview, More, Thinktank, Ecco, etc. Features
	include tree expand/collapse, tree promotion/demotion, level
	sensitive colors, interoutline linking, and body text.
        
	What sets VimOutliner apart from the rest is that it's been
	constructed from the ground up for fast and easy authoring.
	Keystrokes are quick and easy, especially for someone knowing the
	Vim editor. The mouse is completely unnecessary (but is supported
	to the extent that Vim supports the mouse). Many of the
	VimOutliner commands start with a double comma because that's
	very quick to type.
        
	Many outliners are prettier than VimOutliner. Most other
	outliners are more intuitive for the newbie not knowing Vim. Many
	outliners are more featureful than VimOutliner (although
	VimOutliner gains features monthly and is already very powerful).
	Some outliners are faster on lookup than VimOutliner. But as far
	as we know, NO outliner is faster at getting information out of
	your mind and into an outline than VimOutliner.
        
	VimOutliner will always give you lightning fast authoring. That's
	our basic, underlying philosophy, and will never change, no
	matter what features are added.

    Vim integration
	Earlier VimOutliner versions prided themselves on being
	standalone applications, self-contained in a single directory
	with a special script to run everything.
        
	As of 0.3.0, VimOutliner is packaged as a Vim Plugin, eliminating
	the need for the ol script, which many saw as clumsy. Given that
	all VimOutliner features are produced by the Vim engine, it makes
	perfect sense to admit that VimOutliner is an add-on to Vim.
        
	Therefore VimOutliner now prides itself in being a Vim plugin.
	With the VimOutliner package installed, the Vim editor yields the
	VimOutliner feature set for files whose extensions are listed as
	vo_base types in $HOME/.vim/filetype.vim.
        
        The Vim Plugin philosophy yields several benefits:
            Less reliance on Perl, bash and environment vars
            (upcoming) Portability between Linux, Windows and Mac
            (upcoming) Integrated VimOutliner help
            (upcoming) Installation via Vim script

-------------------------------------------------------------------------
RUNNING VIMOUTLINER                                          *vo-running*

    Vim knowledge is a prerequisite
        Overview
	    You needn't be a Vim expert to use VimOutliner. If you know
	    the basics -- inserting and deleting linewise and
	    characterwise, moving between command and insert modes, use
	    of Visual Mode selections,and reformatting, you should be
	    well equipped to use VimOutliner.
            
	    VimOutliner is a set of Vim scripts and configurations. Its
	    features all come from the Vim editor's engine. If you do not
	    know Vim, you'll need to learn the Vim basics before using
	    VimOutliner. Start by taking the Vim tutorial. The tutorial
	    should take about 2 hours.
            
	    VimOutliner is so fast, that if you often use outlining,
	    you'll make up that time within a week.

        Taking the Vim tutorial
            Run vim or gvim
            Type the command, : help tutor
            Follow the instructions

    What are the comma comma commands                        *vo-command*
        Overview
	    For maximum authoring speed, VimOutliner features are
	    accessed through keyboard commands starting with 2 commas.
	    The double comma followed by a character is incredibly fast
	    to type.
            
	    We expect to create more comma comma commands, so try not to
	    create your own, as they may clash with later comma comma
	    commands. If you have an exceptionally handy command, please
	    report it to the VimOutliner list. Perhaps others could
	    benefit from it.

        Command list
            ,,D          VimOutliner reserved command
            ,,H          VimOutliner reserved command
            ,,h          VimOutliner reserved command
            ,,,,         Rerun the VimOutliner initialization scripts
            ,,1          set foldlevel=0
            ,,2          set foldlevel=1
            ,,3          set foldlevel=2
            ,,4          set foldlevel=3
            ,,5          set foldlevel=4
            ,,6          set foldlevel=5
            ,,7          set foldlevel=6
            ,,8          set foldlevel=7
            ,,9          set foldlevel=8
            ,,0          set foldlevel=99999
            ,,-          Draw dashed line
            ,,f          Directory listing of the current directory
            ,,S          Sort highlighted text (:!sort -)
            ,,s          Sort highlighted text (:!sort<CR>)
            ,,t          Insert timestamp (YYYY-MM-DD_HH-mm-SS)
            ,,d          Insert datestamp  (YYYY-MM-DD)
            ,,B          Make body text start with a space
            ,,b          Make body text start with a colon and space
            ,,w          Save changes and return to insert mode

    What are some other VimOutliner Commands

        Overview
	    Naturally, almost all Vim commands work in VimOutliner.
	    Additionally, VimOutliner adds a few extra commands besides
	    the comma comma commands discussed previously.

        Command list:
            Ctrl+K        Follow tag (Synonym for Ctrl+])
            Ctrl+N        Return from tag (Synonym for Ctrl+T)
            Q             Reformat (Synonym for gq)

    How do you perform basic VimOutliner activities       *vo-activities*

        How do I collapse a tree within command mode?
            zc

        How do I expand a tree within command mode?
            To expand one level:
                zo
            To expand all the way down
                zO

        How do I demote a headline?
            In command mode, >>
            In insert mode at start of the line, press the Tab key
            In insert mode within the headline, Ctrl+T
                steve was here and now

        How do I promote a headline?
            In command mode, <<
            In insert mode at start of the line, press the Backspace key
            In insert mode within the headline, Ctrl+D

        How do I promote or demote several consecutive headlines?
            Highlight the lines with the V command
            Press < to promote or > to demote
                You can precede the < or > with a count
                    to promote or demote several levels

        How do I promote or demote an entire tree?
            Collapse the tree
            Use << or >> as appropriate

        How do I collapse an entire outline?
            ,,1

        How do I maximally expand an entire outline?
            ,,0

        How do I expand an outline down to the third level?
            ,,3

        How do I move a tree?
            Use Vim's visual cut and paste

        How do I create body text?
            Open a blank line below a headline
            Start the line with a colon followed by a space
            Continue to type. Your text will wrap

        How do I reformat body text?
            Highlight (Shift+V) the body text to be reformatted
            Use the gq command to reformat

        How do I reformat one paragraph of body text?
            The safest way is highlighting.
                DANGER! Other methods can reformat genuine headlines.

        How do I switch between colon based and space based body text?
            ,,b for colon based, ,,B for space based

        What if ,,b and ,,B don't work
            Change variable use_space_colon from 1 to 0
                in $HOME/.vim/ftplugin/vo_base.vim

        How do I perform a wordcount?
            Use the command :w !wc
                The space before the exclamation point is a MUST.
            
-------------------------------------------------------------------------
CAUTIONS!!!                                                 *vo-cautions*

    The ,,s and ,,S commands can garble your document.  These commands
    have meaning only when operated on headlines of identical
    indentation. If used on headlines of different indentation, they will
    garble your document.

    If you don't anticipate using sorting, you might want to comment out
    the ,,s and ,,S commands within your vo_base.vim file. This can be
    done by putting a double quote (") at the beginning of each of these
    files.

    If one of these commands trashes your file, use the u (undo) command
    to put it back, or quit without saving.

ADVANCED VIMOUTLINER
    To be written in later versions

-------------------------------------------------------------------------
OTHER INFORMATION                                         *vo-other-info*

    The Vimoutliner Project

        How do I add my own features?
	    Two ways -- by changing VimOutliner source code, or by
	    inserting your own code in $HOME/.vimoutlinerrc, which runs
	    at the end of the VimOutliner startup scripts.

        How is VimOutliner licensed?
            VimOutliner is licensed under the GNU General Public License.

        How do I contribute to VimOutliner
	    Step 1 is to subscribe to our mailing list. Join up at
	    http://www.matrixlist.com/mailman/listinfo/vimoutliner. Lurk
	    for a day or so to get the feel, then submit your
	    idea/suggestion. A lively discussion will ensue, after which
	    your idea, probably in some modified form, will be
	    considered. The more of the actual work you have done, the
	    more likely your feature will go in the distribution in a
	    timely manner.

        VimOutliner Naming Convention
	    All VimOutliner files must begin with vo_ unless Vim itself
	    requires them to have a different name. A few older files
	    from previous versions break this rule, but over time these
	    will be changed to our naming convention.
            
	    In the old days, with the "self contained" philosophy, there
	    was no naming convention, because VimOutliner files were
	    segregated into their own tree. With the coming of the "vim
	    plugin" philosophy, there's a need to identify VimOutliner
	    files for purposes of modification, upgrade and
	    de-installation. Hence our naming convention.

        What if my feature doesn't make it into the VimOutliner distribution?
	    You can offer it Extra-Distro, either on your own website, or
	    very possibly on the VimOutliner home page. VimOutliner ships
	    with its core features, but many additional functionalities,
	    especially those that operate from Perl scripts (or bash or
	    python) are available outside the distro. For instance, right
	    now there's an Executable Line feature that turns VimOutliner
	    into a true single tree information reservoir. The Executable
	    Line feature is available extra-distro on the VimOutliner
	    home page.

    Anticipated improvements in later versions
        Command-invoking headlines
            Already prototyped
            Probably coming next version
            Allows you to press a key and get an html command in a browser
            Enables a true single tree knowledge collection
            Enables use of VimOutliner as a shell
        Complete install script
            : The current version has no install script. Future versions will.
        Groupware
            Not yet well defined
            Enables collaborative work on an outline
            A pipedream, but VimOutliner itself was once a pipedream
        Pre and post .vimoutlinerrc
            Not yet sanctioned, might never be implemented
	    Enable your ~/.vimoutlinerrc code to be designated as running
	    either vo_pre-outliner.vim or vo_post-outliner.vim. The
	    vo_pre-outliner.vim configs enable you to set variables
	    needed by vo_base.vim, such as the list of extensions defined
	    as outlines (for instance, .otl, .pho and .emdl). The
	    vo_post-outliner.vim configs enable you to override and/or
	    add to Vimoutliner defaults.
        Headline to headline links
	    Not yet sanctioned, might never be implemented 
	    If implemented, this would presumably create links not just
	    between outlines, but between headlines, either in the same
	    outline or in a different one. This would be a start on
	    "neural networking".
        Level aware sorts
            Under feasability investigation
        Windows version of VimOutliner
            On the list -- shouldn't be difficult
        Headline numbering
            Under feasability investigation
        Checkboxes
            Has already been prototyped
    Further information on outlines, outline processing and outliners
        http://www.troubleshooters.com/tpromag/199911/199911.htm
            Outlining discussion, not product specific
        http://www.troubleshooters.com/linux/olvim.htm 
            Discussion on how to use Vim for outlining
        http://www.troubleshooters.com/projects/vimoutliner.htm
            Webpage for the VimOutliner distro
        http://www.outliners.com
            Discussion of (proprietary) outliners from days gone by
            Downloads for ancient versions of such outliners
                Unfortunately, all are dos, windows and mac
        http://members.ozemail.com.au/~caveman/Creative/Software/Inspiration/index.html
            Discussion of (proprietary,Mac) Inspiration software
            This page discusses many methods of thought/computer interaction
                Visual Outlining
                Textual Outlining
                Idea mapping
                Mind Mapping
                Brainstorming with Rapid Fire Entry
                Concept Mapping
                Storyboarding
                Diagrams (using rich symbol library)
        http://members.ozemail.com.au/~caveman/Creative/index.html
            Not about outlines, but instead about how to user your brain
            The whole purpose of outlines is to use your brain
            New ways of using your brain produce new ways to use outlines
