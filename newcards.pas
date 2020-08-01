UNIT newcards;

  // See end of program for author/licence, etc.

  // Lazarus requires object Free Pascal mode.
  // By default, "string" type is ANSI string. (I think Lazarus puts this.)

{$mode objfpc}{$H+}

INTERFACE

Uses
  About,
  Classes,
  Controls,
  Dialogs,
  ExtCtrls,         // TImage
  Forms,
  Graphics,
  StdCtrls, Buttons, Menus, ComCtrls,
  SysUtils,
  heartsdebug;

Type

    // FORM TYPES ...

    // TfrmMain

  TfrmMain = class(TForm)

    pnlHearts             : TPanel;

    imgHeartsNewGame      : TImage;
    imgNewGame            : TImage;        // + sign to start new game
    imgNewGameHighlight   : TImage;

    imgHeartsReplayHand   : TImage;
    imgReplay             : TImage;        // Circular arrow to replay hand
    imgReplayHighlight    : TImage;

    imgHeartsHint         : TImage;
    imgHint               : TImage;        // Lightbulb to ask for hint
    imgHintHighlight      : TImage;

    imgHeartsReveal       : TImage;
    imgRevealOpen         : TImage;        // Open/closed eyes to reveal/hide cards
    imgRevealOpenHighlight: TImage;
    imgRevealClosed       : TImage;
    imgRevealClosedHighlight: TImage;

    imgHeartsPlayer       : TImage;        // Switch between human and robot player
    imgHuman              : TImage;
    imgHumanHighlight     : TImage;
    imgRobot              : TImage;
    imgRobotHighlight     : TImage;

    tbarSpeed             : TTrackBar;     // How fast to play/remove the cards

    imgAbout              : TImage;
    imgAboutNormal        : TImage;        // Question mark to get program info
    imgAboutHighlight     : TImage;

    imgHeartsQuit         : TImage;
    imgQuit               : TImage;        // Green running person to exit program
    imgQuitHighlight      : TImage;

    butDebug              : TButton;       // Button to show debug form

    timClearTrick         : TTimer;
    timClearPass          : TTimer;

    imgWest               : TImage;        // The characters
    imgNorth              : TImage;
    imgEast               : TImage;
    imgSouth              : TImage;
    imgSouthHuman         : TImage;        // Use tanuki image when human playing
    imgSouthRobot         : TImage;        // Use robot image when robot playing

    imgHeart              : TImage;

    imgWestHeart          : TImage;        // Spot for their winning heart
    imgNorthHeart         : TImage;
    imgEastheart          : TImage;
    imgSouthHeart         : TImage;

    imgPass               : TImage;        // Where to pass cards this hand
    imgPassleft           : TImage;
    imgPassright          : TImage;
    imgPassacross         : TImage;

    imgContinue           : TImage;        // Big image so can click anywhere

    Card01                : TImage;        // The user's cards
    Card02                : TImage;
    Card03                : TImage;
    Card04                : TImage;
    Card05                : TImage;
    Card06                : TImage;
    Card07                : TImage;
    Card08                : TImage;
    Card09                : TImage;
    Card10                : TImage;
    Card11                : TImage;
    Card12                : TImage;
    Card13                : TImage;

    imgTag                : TImage;        // The little red hint arrowhead

    labWestGamesWon       : TLabel;        // Number of games won by each
    labNorthGamesWon      : TLabel;
    labEastGamesWon       : TLabel;
    labSouthGamesWon      : TLabel;

    imgWestsmall          : TImage;        // Character images in the score
    imgNorthsmall         : TImage;
    imgEastsmall          : TImage;
    imgSouthsmall         : TImage;
    imgSouthsmallhuman    : TImage;        // Use tanuki image when human playing
    imgSouthsmallrobot    : TImage;        // Use robot image when robot playing


    labWestGamePoints     : TLabel;
    labNorthGamePoints    : TLabel;
    labEastGamePoints     : TLabel;       // Scores
    labSouthGamePoints    : TLabel;

    labWestHandPoints     : TLabel;
    labNorthHandPoints    : TLabel;
    labEastHandPoints     : TLabel;
    labSouthHandPoints    : TLabel;

    procedure butDebugClick(Sender: TObject);
    procedure Card01Click(Sender: TObject);
    procedure Card02Click(Sender: TObject);
    procedure Card03Click(Sender: TObject);
    procedure Card04Click(Sender: TObject);
    procedure Card05Click(Sender: TObject);
    procedure Card06Click(Sender: TObject);
    procedure Card07Click(Sender: TObject);
    procedure Card08Click(Sender: TObject);
    procedure Card09Click(Sender: TObject);
    procedure Card10Click(Sender: TObject);
    procedure Card11Click(Sender: TObject);
    procedure Card12Click(Sender: TObject);
    procedure Card13Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure imgAboutClick(Sender: TObject);
    procedure imgAboutMouseEnter(Sender: TObject);
    procedure imgAboutMouseLeave(Sender: TObject);
    procedure imgContinueClick(Sender: TObject);
    procedure imgHeartsHintClick(Sender: TObject);
    procedure imgHeartsHintMouseEnter(Sender: TObject);
    procedure imgHeartsHintMouseLeave(Sender: TObject);
    procedure imgHeartsNewGameClick(Sender: TObject);
    procedure imgHeartsNewGameMouseEnter(Sender: TObject);
    procedure imgHeartsNewGameMouseLeave(Sender: TObject);
    procedure imgHeartsPlayerClick(Sender: TObject);
    procedure imgHeartsPlayerMouseEnter(Sender: TObject);
    procedure imgHeartsPlayerMouseLeave(Sender: TObject);
    procedure imgHeartsQuitClick(Sender: TObject);
    procedure imgHeartsQuitMouseEnter(Sender: TObject);
    procedure imgHeartsQuitMouseLeave(Sender: TObject);
    procedure imgHeartsReplayHandClick(Sender: TObject);
    procedure imgHeartsReplayHandMouseEnter(Sender: TObject);
    procedure imgHeartsReplayHandMouseLeave(Sender: TObject);
    procedure imgHeartsRevealClick(Sender: TObject);
    procedure imgHeartsRevealMouseEnter(Sender: TObject);
    procedure imgHeartsRevealMouseLeave(Sender: TObject);
    procedure imgPassClick(Sender: TObject);
    procedure tbarSpeedChange(Sender: TObject);
    procedure timClearPassTimer(Sender: TObject);
    procedure timClearTrickTimer(Sender: TObject);

    private
    public
    end;

    // ENUMERATION TYPES ...

    // "card" is an enumerated type.
    // Just like a "char" etc.
    // So a variable of type "card" is one value from this list, not a set.
    // Note that we use "c2" etc. and not "2c". Why? Because enumeration
    // entries must conform to identifier naming.
    // Note too that they are in the order clubs, diamonds, spades, hearts.
    // This is the order they will be shown in hands, and contrasts colours.

  card = (c2, c3, c4, c5, c6, c7, c8, c9, c10, cj, cq, ck, ca,
          d2, d3, d4, d5, d6, d7, d8, d9, d10, dj, dq, dk, da,
          s2, s3, s4, s5, s6, s7, s8, s9, s10, sj, sq, sk, sa,
          h2, h3, h4, h5, h6, h7, h8, h9, h10, hj, hq, hk, ha);

    // Note that these are just suit names.
    // The actual suits of cards are in the Const section below, with "s".

  suit = (club, diamond, spade, heart);

    // What the human user can be doing
    // Players in the game
    // The possible pass directions

  gamemode = (passing, accepting, playing);
  player = (west, north, east, south);
  passway = (toleft, toright, across, hold);

    // SET TYPES ...

    // So a variable of type "cardset" is a set containing members of type "card".

  cardset = set of card;

Const

   cardnames	: array [card] of shortstring
   		= ('2C', '3C', '4C', '5C', '6C', '7C', '8C', '9C', 'TC', 'JC', 'QC', 'KC', 'AC',
   		   '2D', '3D', '4D', '5D', '6D', '7D', '8D', '9D', 'TD', 'JD', 'QD', 'KD', 'AD',
   		   '2S', '3S', '4S', '5S', '6S', '7S', '8S', '9S', 'TS', 'JS', 'QS', 'KS', 'AS',
                   '2H', '3H', '4H', '5H', '6H', '7H', '8H', '9H', 'TH', 'JH', 'QH', 'KH', 'AH');

   CARDWIDTH              : smallint = 72;
   CARDHEIGHT             : smallint = 96;
   deck		          : cardset = [c2..ha];
   clubs                  : cardset = [c2..ca];
   diamonds	          : cardset = [d2..da];
   spades	          : cardset = [s2..sa];
   hearts	          : cardset = [h2..ha];

   twoofclubs             : card = c2;

   queenofspades          : card = sq;
   kingofspades           : card = sk;
   aceofspades            : card = sa;

Var

    // These are global variables.
    // Rather than pass game state stuff back and forth through arguments,
    // it's a lot simpler to just say these values are always available.

    // Note that the structure of game elements goes:
    //      game     the game until a winner is declared
    //      hand     however many hands (deals) it takes
    //      trick    the 13 tricks in each hand
    //      play     the 4 plays in each trick

  frmMain                 : TfrmMain;

  backimage               : TImage;

  cardimage               : array [card] of TImage;
  cardplayed              : boolean;
  controlbroken           : Boolean;

  dealer                  : player;
  debug                   : Boolean = false;

  gameinprogress          : Boolean = False;
  gamepoints              : array [player] of smallint;      {small int because scores can go negative}
  gamewon                 : Boolean;
  gameswon                : array [player] of smallint;

  handcards               : array [player] of cardset;
  handimage               : array [player, 1..13] of TImage;
  handnumber              : smallint;
  handover                : Boolean;
  handpoints              : array [player] of smallint;

  heartsbroken            : boolean;

  humanimage              : array [1..13] of TImage;      {Could probably use handimage for this}
  humanplayer             : player = south;
  humanstate              : gamemode;
  humantimerson           : boolean;

  imagenum                : smallint;                     { The 1-13 card01 image number}

  loghand                 : cardset;                      { all cards played during this hand}
  logplayer               : array [player] of cardset;    { cards played by each player in hand}
  logsuit                 : array [suit] of cardset;      { cards of each suit played in hand}

  passcards               : array [player] of cardset;
  passdirection           : passway;
  passhintcards           : cardset;
  passmade                : boolean;

  playcard                : card;
  playnumber              : smallint;
  playplayer              : player;
  playlegal               : cardset;
  playsuit                : suit;

  playerdanger            : array [player] of smallint;
  playerstanding          : array [player] of smallint;
  playeroutofsuit         : array [player,suit] of boolean;

  receivecards            : array [player] of cardset;
  replayinprogress        : boolean = false;
  reveal                  : boolean = false;

  robotdelay              : smallint;
  robotplay               : boolean = false;

  savecurrenthand         : array [player] of cardset;
  savecurrentpass         : array [player] of cardset;
  savecurrentdirection    : passway;
  savecurrentgamepoints   : array [player] of smallint;
  savecurrentgamepointstext : array [player] of shortstring;
  savecurrenthandpointstext : array [player] of shortstring;

  saveprevioushand        : array [player] of cardset;
  savepreviouspass        : array [player] of cardset;
  savepreviousdirection   : passway;
  savepreviousgamepoints  : array [player] of smallint;
  savepreviousgamepointstext : array [player] of shortstring;
  saveprevioushandpointstext : array [player] of shortstring;

  tagcards                : cardset;
  tagimage                : array [1..13] of TImage;

  trickcard	          : array [1..4] of card;
  trickimage              : array [player] of TImage;
  tricknumber             : smallint;
  trickover               : Boolean;
  trickplayer             : array [1..4] of player;
  trickpoints             : array [player] of smallint;
  trickset                : cardset;                   {like trickcard, but as a set of cards played so far}
  tricksetsuitcards       : cardset;                   {subset of trickset, just cards of the led suit}
  tricksuit               : cardset;                   {all the cards in the suit of the card led}
  trickwinner             : player;

  winners                 : set of player;             {can be more than 1}

IMPLEMENTATION

  // We declare all our procedures/functions "forward".
  // It allows us to use them in any order without worrying whether they have
  // been defined lexically first. And provides a nice reference list.

  // Set up
procedure setuppanelimages;                                             forward;
procedure loadcardimagesfromresources;                                  forward;
procedure setuphandimages;                                              forward;
procedure setuptagimages;                                               forward;
procedure setuptrickimages;                                             forward;
procedure setupotherimages;                                             forward;
procedure setuptiming;                                                  forward;

  // Ersatz form procedure
procedure processcardclick;                                             forward;

  // Game flow
procedure startgame;                                                    forward;
procedure finishgame;                                                   forward;
procedure starthand;                                                    forward;
procedure finishhand;                                                   forward;
procedure starttrick;                                                   forward;
procedure finishtrick;                                                  forward;

  // Game help
  //    ... dealing
procedure choosedealer;                                                 forward;
procedure dealcards;                                                    forward;

  //   ... passing
procedure select3cardstopass;                                           forward;
procedure selectforthisplayer   (p : player);                           forward;
procedure pass3cards;                                                   forward;

  //   ... playing
function  playerwith2clubs                                  : player;   forward;
procedure getlegalcards;                                                forward;
procedure selectcardtoplay;                                             forward;
procedure chooseplayingcard;                                            forward;
procedure maketheplay;                                                  forward;

  //   ... winning
procedure checkforwinner;                                               forward;

  // Strategy
procedure basicplay;                                                    forward;
procedure basicleading;                                                 forward;
procedure basicnotleadingnotfollowingsuit;                              forward;
procedure basicfollowhearts;                                            forward;
procedure basicfollowspades;                                            forward;
procedure basicfollowother;                                             forward;

procedure getcontrolplay;                                               forward;
procedure stopcontrolplay;                                              forward;
procedure calculateplayerstandings;                                     forward;
procedure calculateplayerdangers;                                       forward;
function  oktodropqueen (p: player; q: player) : boolean;               forward;
procedure checkforcontrol;                                              forward;
procedure projecttrickwinner;                                           forward;

  // Card display
procedure resetcardpositions;                                           forward;
procedure showeveryhand;                                                forward;
procedure showhand           (p : player);                              forward;
procedure removecard         (c : card; p: player);                     forward;
procedure popcard;                                                      forward;
procedure sinkcard;                                                     forward;
procedure tagcard;                                                      forward;
procedure untagcard;                                                    forward;
procedure bughands;                                                     forward;
procedure bugit              (s : string);                              forward;

  // Score display
procedure clearscores;                                                  forward;
procedure savepreviousscores;                                           forward;
procedure savecurrentscores;                                            forward;
procedure restorescoresfromcurrent;                                     forward;
procedure restorescoresfromprevious;                                    forward;
procedure resetcurrenttoprevious;                                       forward;

  // Utility
function  countcards         (xcards : cardset)            : smallint;  forward;
function  cards_to_cardnames (xcards : cardset)         : shortstring;  forward;
function  cardname_to_card   (s : shortstring)                 : card;  forward;
function  card_to_cardpos    (x : card; xcards : cardset)  : smallint;  forward;
function  cardpos_to_card    (n : smallint; xcards : cardset)  : card;  forward;
function  card_to_image      (x : card; xcards : cardset)  : smallint;  forward;
function  image_to_card      (imagenum : smallint; p : player) : card;  forward;
function  pickarandomcard    (xcards : cardset)                : card;  forward;
function  cardsuit           (x: card)                         : suit;  forward;
function  cardrank           (x : card)                    : smallint;  forward;
function  highestofsuit     (xcards: cardset; suitset: cardset) : card; forward;
function  highestofall       (xcards: cardset)                 : card;  forward;
function  lowestofsuit      (xcards: cardset; suitset: cardset) : card; forward;
function  lowestofall        (xcards: cardset)                 : card;  forward;
function  cardtoavoidtrick                                     : card;  forward;

  // Include resource newcards.lfm, the form layout file
  // * doesn't mean all, it means substitute unit name, i.e. newcards

{$R *.lfm}


//###################################################################
// SET UP PROCEDURES
//###################################################################


//===================================================================
// Load the form
// The last thing it does is start the first game.
//===================================================================

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  randomize;
  setuppanelimages;
  loadcardimagesfromresources;
  setuphandimages;
  setuptagimages;
  setuptrickimages;
  setupotherimages;
  setuptiming;
  startgame;
end;

//===================================================================
// The panel images.
//===================================================================

procedure setuppanelimages;

begin
  frmMain.imgHeartsNewGame.Picture     := frmMain.imgNewGame.Picture;
  frmMain.imgHeartsReplayHand.Picture  := frmMain.imgReplay.Picture;
  frmMain.imgHeartsHint.Picture        := frmMain.imgHint.Picture;
  frmMain.imgHeartsReveal.Picture      := frmMain.imgRevealClosed.Picture;
  frmMain.imgHeartsPlayer.Picture      := frmMain.imgHuman.Picture;
  frmMain.imgAbout.Picture             := frmMain.imgAboutNormal.Picture;
  frmMain.imgHeartsQuit.Picture        := frmMain.imgQuit.Picture;
end;

//===================================================================
// Load card images from resources.
// This is the preferred to loading from files as it allows the app
// to be distributed as a self-contained executable with no other
// files needed.
//===================================================================

procedure loadcardimagesfromresources;

var
  c                       : card;
  i                       : smallint = 0;
  n                       : shortstring;
  pic                     : TPicture;
  resname                 : shortstring;

begin

  pic := TPicture.Create;

    // The card back

  backimage := TImage.Create(frmMain);
  TImage(backimage).Transparent := True;
  TImage(backimage).Parent := frmMain;
  TImage(backimage).Width := CARDWIDTH;
  TImage(backimage).Height := CARDHEIGHT;
  TImage(backimage).Left := 1;
  TImage(backimage).Top := 500;
  TImage(backimage).Visible := false;

  pic.LoadFromResourceName (HInstance, 'BACKLOON');
  TImage(backimage).Picture.Assign(pic);

    // The card fronts

  for c in card do begin

    i := i + 1;

    cardimage[c] := TImage.Create(frmMain);
    TImage(cardimage[c]).Transparent := True;
    TImage(cardimage[c]).Parent := frmMain;
    TImage(cardimage[c]).Width := CARDWIDTH;
    TImage(cardimage[c]).Height := CARDHEIGHT;
    TImage(cardimage[c]).Left := 15*i;
    TImage(cardimage[c]).Top := 500;
    TImage(cardimage[c]).Visible := false;

    n := inttostr(i);
    if length(n) = 1 then begin
      n := '0' + n;
    end;

    resname := 'C' + n;
    pic.LoadFromResourceName (HInstance, resname);
    TImage(cardimage[c]).Picture.Assign(pic);

  end;

  pic.free;

end;

//===================================================================
// Set up images to display each player's hand.
//===================================================================

procedure setuphandimages;

var
  i                       : smallint;
  p                       : player;

begin

  for p in player do begin

    case p of

      west, north, east : begin

        for i := 1 to 13 do begin
          handimage[p,i] := TImage.Create(frmMain);
          TImage(handimage[p,i]).Transparent := True;
          TImage(handimage[p,i]).Parent      := frmMain;
          TImage(handimage[p,i]).Width       := CARDWIDTH;
          TImage(handimage[p,i]).Height      := CARDHEIGHT;
          TImage(handimage[p,i]).Visible     := false;
        end;

      end;

      south : begin

        humanimage[1]  := frmMain.Card01;
        humanimage[2]  := frmMain.Card02;
        humanimage[3]  := frmMain.Card03;
        humanimage[4]  := frmMain.Card04;
        humanimage[5]  := frmMain.Card05;
        humanimage[6]  := frmMain.Card06;
        humanimage[7]  := frmMain.Card07;
        humanimage[8]  := frmMain.Card08;
        humanimage[9]  := frmMain.Card09;
        humanimage[10] := frmMain.Card10;
        humanimage[11] := frmMain.Card11;
        humanimage[12] := frmMain.Card12;
        humanimage[13] := frmMain.Card13;

      end;

    end;  {end case}

  end; {end for}

    // Note that we reset card positions here. Although they will be
    // reset by the start game procedure anyway, we do it here so that
    // they have the correct values in time for the setuptrickimages
    // routine, which is based on positions relative to the cards.

  resetcardpositions;

end;

//===================================================================
// Set up tag images - the little markers when a hint is requested.
//===================================================================

procedure setuptagimages;

var
  i                       : smallint;

begin

  for i := 1 to 13 do begin
    TImage(tagimage[i]) := TImage.Create(frmMain);
    TImage(tagimage[i]).Transparent := True;
    TImage(tagimage[i]).Parent      := frmMain;
    TImage(tagimage[i]).Width       := 16;
    TImage(tagimage[i]).Height      := 16;
    TImage(tagimage[i]).Top         := humanimage[i].Top + CARDHEIGHT + 1;
    TImage(tagimage[i]).Left        := humanimage[i].Left + 2;
    TImage(tagimage[i]).Picture     := frmMain.imgTag.Picture;
    TImage(tagimage[i]).Visible     := false;
  end;

end;

//===================================================================
// Set up images to display each card of the trick.
//
// Rather than give them absolute pixels, we center between card hands.
// The formula for midpoint of the center area looks a little weird,
// but it does reduce to that.
//
// Then we position the trick cards around the midpoint.
//===================================================================

procedure setuptrickimages;

var
  midpointleft            : smallint;
  midpointtop             : smallint;
  p                       : player;
  posleft                 : smallint;
  postop                  : smallint;

begin

  midpointtop  := (handimage[north,1].Top + handimage[north,1].Height + humanimage[1].Top ) div 2;
  midpointleft := (handimage[west,1].Left + handimage[west,1].Width + handimage[east,1].Left) div 2;

  for p in player do begin

    case p of
      south: begin
        posleft := midpointleft - (humanimage[1].width div 2);
        postop  := midpointtop + 2;
      end;
      west: begin
        posleft := (midpointleft - handimage[west,1].width) - 4;
        postop  := midpointtop  - (handimage[west,1].Height div 2);
      end;
      north: begin
        posleft := midpointleft - (handimage[north,1].width div 2);
        postop  := (midpointtop - handimage[north,1].Height) - 2;
      end;
      east: begin
        posleft := midpointleft + 4;
        postop  := midpointtop - (handimage[east,1].height div 2);
      end;
    end;

    trickimage[p] := TImage.Create(frmMain);
    TImage(trickimage[p]).Transparent := True;
    TImage(trickimage[p]).Parent := frmMain;
    TImage(trickimage[p]).Width := CARDWIDTH;
    TImage(trickimage[p]).Height := CARDHEIGHT;
    TImage(trickimage[p]).Left:= posleft;
    TImage(trickimage[p]).Top:= postop;
    TImage(trickimage[p]).visible := false;

  end;

end;

//===================================================================
// Set up pass image, heart images, and the overlay for continuing.
// The overlay would be in the way on the form if we had it at its
// proper size and position during design. That's why we move and
// size it now.
//===================================================================

procedure setupotherimages;

var
  p                       : player;

begin

  frmMain.imgPass.Visible       := False;

  frmMain.imgSouthHeart.Picture := frmMain.imgHeart.Picture;
  frmMain.imgWestHeart.Picture  := frmMain.imgHeart.Picture;
  frmMain.imgNorthHeart.Picture := frmMain.imgHeart.Picture;
  frmMain.imgEastHeart.Picture  := frmMain.imgHeart.Picture;

  frmMain.imgContinue.Top       := frmMain.imgNorth.Top - 5;
  frmMain.imgContinue.Left      := 1;
  frmMain.imgContinue.Width     := frmMain.Width - 2;
  frmMain.imgContinue.Height    := frmMain.Height - frmMain.imgContinue.Top;

  frmMain.imgContinue.Visible   := False;
  frmMain.imgContinue.Sendtoback;

  frmMain.labSouthGamesWon.Caption      := '';
  frmMain.labWestGamesWon.Caption       := '';
  frmMain.labNorthGamesWon.Caption      := '';
  frmMain.labEastGamesWon.Caption       := '';

  for p in player do begin
    gameswon[p] := 0;
  end;

end;

//===================================================================
// Set up the initial timing for:
//   - receiving a pass
//   - clearing away the trick
//   - robot play
//
// We set the slider to the middle. The slider is an indication of
// speed. Moving it to the right means increasing the speed of play.
// We have to convert that to a time delay. That's the inverse, so
// we subtract the slider position. We want the delay to range from
// 0 to 3 seconds. Each tick represents 1/10 of a second (100 msec).
//
// When the user is playing, they have a choice of waiting for the
// program to receive the pass and clear the trick away. Or they can
// click anywhere on the green table to have that done immediately.
//
// When we start the program, they may not know they can click to
// make that happen, so we put the timers on. They can then adjust the
// timing to their liking. If they slide it all the way to the left,
// the timers will not be used. (Hopefully they will then discover
// that clicking moves the game along.) We want to have this setting
// where the timers are completely off, so they can take as long as
// they like to look at things before moving on.
//
// When the robot is playing, the timers will be used, and the slider
// will control the pace of the game - not only receiving the pass
// and clearing away the trick, but also when making the pass so any
// one watching can see what cards the robot chooses to pass.
//
// When the robot starts, we will choose a slightly shorter delay
// because this initial delay is geared toward the user playing.
//===================================================================

procedure setuptiming;

var
  playdelay               : smallint;

begin

  frmmain.tbarspeed.min := 0;
  frmmain.tbarspeed.max := 30;
  frmmain.tbarspeed.position := (frmmain.tbarspeed.min + frmmain.tbarspeed.max) div 2;

  playdelay := 100 * ((frmmain.tbarspeed.max +1) - frmmain.tbarSpeed.position);
  humantimerson := true;
  frmmain.timClearTrick.interval := playdelay;
  frmmain.timClearPass.interval  := playdelay;
  robotdelay := playdelay;

end;


//###################################################################
// PROCEDURES FOR TfrmMain
//
// User interactive procedures.
//###################################################################


//===================================================================
// New game - click (start game).
//===================================================================

procedure TfrmMain.imgHeartsNewGameClick(Sender: TObject);
begin
  startgame;
end;

//===================================================================
//          - enter (highlight it).
//===================================================================

procedure TfrmMain.imgHeartsNewGameMouseEnter(Sender: TObject);
begin
  imgHeartsNewGame.Picture := frmMain.imgNewGameHighlight.Picture;
end;

//===================================================================
//          - leave (dull it).
//===================================================================

procedure TfrmMain.imgHeartsNewGameMouseLeave(Sender: TObject);
begin
  imgHeartsNewGame.Picture := frmMain.imgNewGame.Picture;
end;

//===================================================================
// Replay - click (replay hand).
//
// This is just so the human player can try a different approach and
// see how it might come out differently. We don't attempt to have
// the computer players reproduce what they did before. They will
// pass the same cards, but they may not play the same card as before
// even if everything is the same as it was up to that point.
//
// If they are in the middle of some hand (ie they have passed cards
// and/or played cards), then clicking replay will restart this hand.
//
// If they have not yet passed and/or played a card in the current
// hand, then clicking replay will restart the previous hand.
//
// Note that they can only go back one hand, not to the hand before
// that and so on back to the beginning of the game. That is, they
// cannot restart the current hand, and then, before passing or
// playing, try to replay the hand before that.
//
// Note too that the "previous" information is only useful for that
// very brief period when they are starting a new hand but have not
// yet passed (or played a card in the case of a hold). It's there
// because we don't know if they are going to ask for a repeat or
// not, of course. We have to assume they won't, so we have to save
// the score at the end of the hand just played, etc. and that wipes
// out the "current" info which was recording the scores etc. as they
// stood at the beginning of the previous hand (which was the current
// hand until they just started this new hand). But if they do repeat
// the now previous hand before getting this one officially under way
// we want to have that hand's info still around, which is what the
// "previous" data elements do.
//===================================================================

procedure TfrmMain.imgHeartsReplayHandClick(Sender: TObject);

var
  gameswontext            : shortstring;
  i                       : smallint;
  p                       : player;
  s                       : suit;
  situation               : char;

begin

    // Which situation is it?

  situation := 'X';

  if ((handnumber = 1) and (passmade = false)) then
    situation := 'A'
  else
    if gameinprogress = false then
      situation := 'B'
    else
      if (passmade = true) or (cardplayed = true) then
        situation := 'C'
      else
        if     (replayinprogress = False)
           and ((passmade = false) or
                ((passdirection = hold) and (cardplayed = false))) then
          situation := 'D';

    // Process the situation.

  case situation of

      // Situation A
      //
      // It is the first hand, and they haven't passed yet.
      // There is no previous hand to go to, and restarting this one
      // would just bring them to the same point they are already at.
      // So do nothing.

    'A' : begin
      //showmessage ('Situation A - ignore');
      exit;
    end;

      // Situation B
      //
      // The game was over. They want to replay the last hand.
      // Since we hadn't started a new hand (because the game was over),
      // we restore from the current situation, not the previous, and we
      // don't have to decrement the handnumber.
      // Make sure the heart winner symbol(s) from previous game are invisible
      // and decrement their number of games won.

    'B' : begin
      //showmessage ('Situation B - replay last hand of game');
      for p in player do begin
        handcards[p] := savecurrenthand[p];
        gamepoints[p] := savecurrentgamepoints[p];
      end;

      restorescoresfromcurrent;
      passdirection := savecurrentdirection;
      if passdirection <> hold then begin
        for p in player do begin
          passcards[p] := savecurrentpass[p];
        end;
      end;

      for p in winners do begin

        gameswon[p] := gameswon[p] - 1;
        case gameswon[p] of
          0 :  gameswontext := '';
          else gameswontext :=inttostr (gameswon[p]);
        end;

        case p of

          south : begin
            frmMain.imgSouthHeart.Visible := False;
            frmMain.labSouthGamesWon.Caption := gameswontext;
          end;

          west  : begin
            frmMain.imgWestHeart.Visible := False;
            frmMain.labWestGamesWon.Caption := gameswontext;
          end;

          north : begin
            frmMain.imgNorthHeart.Visible := False;
            frmMain.labNorthGamesWon.Caption := gameswontext;
          end;

          east  : begin
            frmMain.imgEastHeart.Visible := False;
            frmMain.labEastGamesWon.Caption := gameswontext;
          end;

        end;

      end;

      gameinprogress := true;
      gamewon := false;

    end;

      // Situation C
      //
      // They have already passed (or played a card in the case of a hold).
      // Can only restart this hand.
      // No need to change the displayed score or handnumber.

    'C' : begin
      //showmessage ('Situation C - replay this hand');
      for p in player do begin
        handcards[p] := savecurrenthand[p];
      end;
      passdirection := savecurrentdirection;
      if passdirection <> hold then begin
        for p in player do begin
          passcards[p] := savecurrentpass[p];
        end;
      end;

    end;

      // Situation D
      //
      // They haven't passed yet, or, in the case of a hold, played a card.
      // They want to go back to the previous hand.
      // But if they are already replaying this hand, they can't. We only
      // save the cards of one previous hand, and this is it.

    'D' : begin
      //showmessage ('Situation D - replay previous hand');
      for p in player do begin
        handcards[p] := saveprevioushand[p];
        savecurrenthand[p] := saveprevioushand[p];
        gamepoints[p] := savepreviousgamepoints[p];
        savecurrentgamepoints[p] := savepreviousgamepoints[p];
      end;

      restorescoresfromprevious;
      resetcurrenttoprevious;

      passdirection := savepreviousdirection;
      savecurrentdirection := savepreviousdirection;
      if passdirection <> hold then begin
        for p in player do begin
          passcards[p] := savepreviouspass[p];
          savecurrentpass[p] := savepreviouspass[p];
        end;

      end;

      handnumber := handnumber - 1;

    end;

      // Situation X
      //
      // Something else - just exit.

    'X' : begin
      exit;
    end;

  end;

    // Common - now the things that are common to every replay situation.

  replayinprogress := true;

    // ... position the card images (or reposition them if any are popped
    //     because they terminated previous game in middle).

  resetcardpositions;

    // ... clear the trick images in case they clicked replay during a trick.

  for p in player do begin
    trickimage[p].visible := false;
  end;

    // ... make sure all the tag markers (for hints) are cleared.

  for i := 1 to 13 do begin
    tagimage[i].Visible := False;
  end;

    // ... reset things to the way they were when the hand started.

  tricknumber := 0;
  heartsbroken := false;
  controlbroken := false;
  passmade := false;
  cardplayed := false;

    // ... zero everyone's points for this hand.

  for p in player do begin
    handpoints[p] := 0;
  end;

    // ... clear the logs of cards played in this hand.

  loghand := [];
  for p in player do begin
    logplayer[p] := [];
  end;
  for s in suit do begin
    logsuit[s] := [];
  end;

    // ... clear out who has run out of the various suits.

  for p in player do begin
    for s in suit do begin
      playeroutofsuit[p,s] := false;
    end;
  end;

    //  ... show the hands.

  bughands;
  showeveryhand;

    // ... were we passing or holding?
    //       If it's hold, we can start the first trick right away.
    //       Otherwise, restore the computer players' pass cards.
    //       And restore the hints for the human player.

  if passdirection = hold then begin
    starttrick;
    exit;
  end;

  passhintcards := passcards[humanplayer];
  passcards[humanplayer] := [];

    // ... prepare to get the human player's passes.

  humanstate := passing;

  case passdirection of
    toright  : frmMain.imgPass.Picture := frmMain.imgPassRight.Picture;
    toleft   : frmMain.imgPass.Picture := frmMain.imgPassLeft.Picture;
    across   : frmMain.imgPass.Picture := frmMain.imgPassAcross.Picture;
  end;

  frmMain.imgPass.visible := True;

end;

//===================================================================
//          - enter (highlight it).
//===================================================================

procedure TfrmMain.imgHeartsReplayHandMouseEnter(Sender: TObject);
begin
  imgHeartsReplayHand.Picture := frmMain.imgReplayHighlight.Picture;
end;

//===================================================================
//          - leave (dull it).
//===================================================================

procedure TfrmMain.imgHeartsReplayHandMouseLeave(Sender: TObject);
begin
  imgHeartsReplayHand.Picture := frmMain.imgReplay.Picture;
end;

//===================================================================
// Hint - click (suggest card(s) to pass/play).
//
// Note that we don't have to protect against trying to show hints
// when it's a hold because then the humanstate will never be
// passing (if we've done it right).
//===================================================================

procedure TfrmMain.imgHeartsHintClick(Sender: TObject);

begin

  if gameinprogress = False then begin
    exit;
  end;

  case humanstate of
    passing : begin
      tagcards := passhintcards;
      tagcard;
    end;

    playing : begin
      tagcards := [];
      include (tagcards, playcard);
      tagcard;
    end;

  end;

end;

//===================================================================
//          - enter (highlight it).
//===================================================================

procedure TfrmMain.imgHeartsHintMouseEnter(Sender: TObject);
begin
  imgHeartsHint.Picture := frmMain.imgHintHighlight.Picture;
end;

//===================================================================
//          - leave (dull it).
//===================================================================

procedure TfrmMain.imgHeartsHintMouseLeave(Sender: TObject);
begin
  imgHeartsHint.Picture := frmMain.imgHint.Picture;
end;

//===================================================================
// Reveal - click (show/hide cards).
//
// Note that the icon shows the current state of the cards, and thus
// the current state of the reveal flag.
//
// So mousing over shows what you can toggle them to.
//===================================================================

procedure TfrmMain.imgHeartsRevealClick(Sender: TObject);
begin

  if gameinprogress = False then begin
    exit;
  end;

  case reveal of

    true : begin
      reveal := false;
      imgHeartsReveal.Picture := frmMain.imgRevealClosed.Picture;
    end;

    false : begin
      reveal := true;
      imgHeartsReveal.Picture := frmMain.imgRevealOpen.Picture;
    end;

  end;

  showeveryhand;

end;

//===================================================================
//          - enter (highlight it and show what it will become if clicked).
//===================================================================

procedure TfrmMain.imgHeartsRevealMouseEnter(Sender: TObject);
begin

  case reveal of

    true : begin
      imgHeartsReveal.Picture := frmMain.imgRevealClosedHighlight.Picture;
    end;

    false: begin
       imgHeartsReveal.Picture := frmMain.imgRevealOpenHighlight.Picture;
    end;
  end;

end;

//===================================================================
//          - leave (dull it).
//===================================================================

procedure TfrmMain.imgHeartsRevealMouseLeave(Sender: TObject);
begin

  case reveal of

    true : begin
      imgHeartsReveal.Picture := frmMain.imgRevealOpen.Picture;
    end;

    false: begin
       imgHeartsReveal.Picture := frmMain.imgRevealClosed.Picture;
    end;
  end;

end;

//===================================================================
// Player - click (human/robot)
//
// As for the reveal image, the icon shows the current state of the
// player, and thus the robotplay flag.
//
// So mousing over shows what you can toggle to.
//
// All we do is change the pictures and set whether the robot is
// playing or not. One extra thing - if the human player is playing,
// then we need the interval to clear away the trick to be set to
// the slider's value (which we saved as robot delay); if the robot
// is playing, we don't want to add the clear trick time to the
// time already spent sleeping after showing the last card of the
// trick. So we set it to a minimal value.
//===================================================================

procedure TfrmMain.imgHeartsPlayerClick(Sender: TObject);
begin

    case robotplay of

      true : begin
        robotplay               := false;
        imgHeartsPlayer.Picture := frmMain.imgHuman.Picture;
        imgSouth.Picture        := frmMain.imgSouthhuman.Picture;
        imgSouthsmall.Picture   := frmMain.imgSouthsmallhuman.Picture;
        timClearTrick.Interval  := robotdelay;
      end;

      false : begin
        robotplay               := true;
        imgHeartsPlayer.Picture := frmMain.imgRobot.Picture;
        imgSouth.Picture        := frmMain.imgSouthrobot.Picture;
        imgSouthsmall.Picture   := frmMain.imgSouthsmallrobot.Picture;
        timClearTrick.Interval  := 100;
      end;

    end;

end;

//===================================================================
//          - enter (highlight it and show what it will become if clicked).
//===================================================================

procedure TfrmMain.imgHeartsPlayerMouseEnter(Sender: TObject);
begin

  case robotplay of

    true : begin
      imgHeartsPlayer.Picture := frmMain.imgHumanHighlight.Picture;
    end;

    false: begin
       imgHeartsPlayer.Picture := frmMain.imgRobotHighlight.Picture;
    end;
  end;
end;

//===================================================================
//          - leave (dull it).
//===================================================================

procedure TfrmMain.imgHeartsPlayerMouseLeave(Sender: TObject);
begin

  case robotplay of

    true : begin
      imgHeartsPlayer.Picture := frmMain.imgRobot.Picture;
    end;

    false: begin
       imgHeartsPlayer.Picture := frmMain.imgHuman.Picture;
    end;
  end;
end;

//===================================================================
// Allow the user to control the speed of the play. This includes
// how fast the timers run to clear away the pass and the trick.
// And how fast the cards are popped and played when the robot is
// playing instead of the human player.
//
// When the slider is all the way to the left (min), then:
//   - when the human player is playing, the timers will not run
//     (program will wait for user click)
//   - when the robot is playing, play will be very slow (5 seconds
//     between actions)
// Otherwise, moving the slider to the left activates the timers, and
// speeds up play to a maximum of 1/2 second.
//
// By default, when the program starts, the human is playing, and the
// slider is all the way to the left.
//
// The slider runs from 1 to 10. Subtract it from 11, now runs from
// 10 to 1. Multiply by 500 to give delay in milliseconds from
// 5000 to 500, ie 5 seconds to .5 second.
//===================================================================

procedure TfrmMain.tbarSpeedChange(Sender: TObject);

var
  playdelay               : smallint;

begin

  if tbarspeed.position = tbarspeed.min then begin
    humantimerson := false;
    end
  else begin
    humantimerson := true;
  end;

  playdelay := 100 * ((tbarspeed.max + 1) - tbarSpeed.position);

  timClearTrick.interval := playdelay;
  timClearPass.interval  := playdelay;
  robotdelay             := playdelay;

end;
//===================================================================
// About - click (show the info).
//===================================================================

procedure TfrmMain.imgAboutClick(Sender: TObject);
begin
  frmAbout.ShowModal;
end;

//===================================================================
//       - enter (highlight it).
//===================================================================

procedure TfrmMain.imgAboutMouseEnter(Sender: TObject);
begin
  imgAbout.Picture := imgAboutHighlight.Picture;
end;

//===================================================================
//       - leave (dull it).
//===================================================================

procedure TfrmMain.imgAboutMouseLeave(Sender: TObject);
begin
  imgAbout.Picture := imgAboutNormal.Picture;
end;

//===================================================================
// Quit - click (exit program).
//===================================================================

procedure TfrmMain.imgHeartsQuitClick(Sender: TObject);
begin
  Close;
end;

//===================================================================
//          - enter (highlight it).
//===================================================================

procedure TfrmMain.imgHeartsQuitMouseEnter(Sender: TObject);
begin
    imgHeartsQuit.Picture := frmMain.imgQuitHighlight.Picture;
end;

//===================================================================
//          - leave (dull it).
//===================================================================

procedure TfrmMain.imgHeartsQuitMouseLeave(Sender: TObject);
begin
  imgHeartsQuit.Picture := frmMain.imgQuit.Picture;
end;


//===================================================================
// Click Debug
//
// Turns on/off the display of the debug form.
//===================================================================

procedure TfrmMain.butDebugClick(Sender: TObject);

begin

  case debug of

    true : begin
      debug := false;
      frmdebug.close;
    end;

    false: begin
      debug := true;
      frmdebug.show;
      frmdebug.memDebug.lines.clear;
    end;

  end;

end;

//===================================================================
// Click one of the user's card images.
//
// These have to be separate controls because Lazarus does not have
// the ability to set up a control array at design time. So we also
// need to have separate event responses here. But after this, we
// can use the array equivalents we set up at run time.
//===================================================================

procedure TfrmMain.Card01Click(Sender: TObject);
begin
  imagenum := 1;
  processcardclick;
end;

procedure TfrmMain.Card02Click(Sender: TObject);
begin
  imagenum := 2;
  processcardclick;
end;

procedure TfrmMain.Card03Click(Sender: TObject);
begin
  imagenum := 3;
  processcardclick;
end;

procedure TfrmMain.Card04Click(Sender: TObject);
begin
  imagenum := 4;
  processcardclick;
end;

procedure TfrmMain.Card05Click(Sender: TObject);
begin
  imagenum := 5;
  processcardclick;
end;

procedure TfrmMain.Card06Click(Sender: TObject);
begin
  imagenum := 6;
  processcardclick;
end;

procedure TfrmMain.Card07Click(Sender: TObject);
begin
  imagenum := 7;
  processcardclick;
end;

procedure TfrmMain.Card08Click(Sender: TObject);
begin
  imagenum := 8;
  processcardclick;
end;

procedure TfrmMain.Card09Click(Sender: TObject);
begin
  imagenum := 9;
  processcardclick;
end;

procedure TfrmMain.Card10Click(Sender: TObject);
begin
  imagenum := 10;
  processcardclick;
end;

procedure TfrmMain.Card11Click(Sender: TObject);
begin
  imagenum := 11;
  processcardclick;
end;

procedure TfrmMain.Card12Click(Sender: TObject);
begin
  imagenum := 12;
  processcardclick;
end;

procedure TfrmMain.Card13Click(Sender: TObject);
begin
  imagenum := 13;
  processcardclick;
end;

//===================================================================
// Process the click on one of the human user's cards.
//
// There are two reasons to click a card:
//  1 - selecting (or deselecting) a card to pass
//  2 - selecting a card to play
//
// We keep track of a game mode setting to tell us which it is.
//===================================================================

procedure processcardclick;

var
  c                       : card;
 {x                       : shortstring;}

begin

  c := image_to_card (imagenum, humanplayer);

  {writestr(x, c);
   showmessage ('clicked image number: ' + inttostr(imagenum)
              + ' which is card: ' + x);}

    // Which mode is it?

  case humanstate of

    passing: begin

        // Has the user already selected this card?
        // If so, that means they had second thoughts - remove it and unpop.
        // If not, add to list and pop - unless full.

      if c in passcards[humanplayer] then begin
        exclude (passcards[humanplayer],c);
        sinkcard;
      end
      else begin
        if countcards(passcards[humanplayer]) < 3 then begin
          include (passcards[humanplayer],c);
          popcard;
        end;
      end;
    end;

    playing: begin

        // If it's not a legal card, do nothing.
        // If it is legal, then:
        //  - remove any hint tag
        //  - play the card
        //  - remember that a card has been played, because after first card
        //    played on a hold, then "replay" affects this hand, not previous
        //  - finish the trick (and possibly hand and game)

      if c in playlegal then begin
        untagcard;
        playcard := c;
        maketheplay;
        cardplayed := true;
        finishtrick;
      end;
    end;

  end; {of case}


 end;

//===================================================================
// Click pass image
//===================================================================

procedure TfrmMain.imgPassClick(Sender: TObject);

var
  p                       : player;
  s                       : string;
  t                       : string;

begin

    // Make sure the user has selected 3 cards.

  if countcards(passcards[humanplayer]) < 3 then begin
     //showmessage ('Select 3 cards first');
    exit;
  end;

    // Print on debug form

  writestr(s, passdirection);
  bugit ('Pass cards: ' + s);
  for p in player do begin
    writestr(s, p);
    writestr(t, cards_to_cardnames(passcards[p]));
    bugit (s + ': ' + t);
  end;

    // Remove any hint tags.

  untagcard;

    // If this is the first hand of a game, then clicking the pass right ends
    // any chance of replaying the last hand of the previous game (if there was
    // a previous game).
    // Save the pass in case they want to replay this hand.

  for p in player do begin
    savecurrentpass[p] := passcards[p];
  end;

    // Pass them.

  pass3cards;
  frmMain.imgPass.Visible := False;
  bughands;
  showeveryhand;

    // The cards have been passed.
    // Now they need to accept their new ones.
    // Can either click the continue image, or wait for timer to run out.

  humanstate := accepting;

  frmMain.imgContinue.bringtofront;
  frmMain.imgContinue.visible := True;

  if humantimerson then begin
    frmMain.timClearPass.Enabled := True;
  end;

  passmade := true;

end;

//===================================================================
// Click the Continue image
//
// There are two reasons:
//  1 - they are accepting the cards passed to them
//  2 - they've seen all the trick cards played
//===================================================================

procedure TfrmMain.imgContinueClick(Sender: TObject);

var
  c                       : card;
  p                       : player;

begin

    // Clear the big image right away

  frmMain.imgContinue.sendtoback;
  frmMain.imgContinue.visible := False;

  case humanstate of

      // Clicked to accept the cards passed
      // Turn off timer so we don't respond to it and do things twice.

    accepting: begin

      timClearPass.Enabled := False;

      for c in receivecards[humanplayer] do begin
        imagenum := card_to_image (c, handcards[humanplayer]);
        sinkcard;
      end;
      humanstate := playing;      // So when they click a card again we know
                                  // it's because they want to play it.
      starttrick;
    end;

      // Clicked to signal seen the complete trick
      // Turn off timer so we don't respond to it and do things twice.
      // If it's last trick then finish hand.
      // Otherwise start a new trick.

    playing : begin

      timClearTrick.Enabled := False;

      for p in player do begin
        trickimage[p].visible := false;
      end;

      if tricknumber = 13 then begin
        finishhand;
      end
      else begin
        starttrick;
      end;

    end;

  end; {end case}

end;

//===================================================================
// The time to view the passed cards is over.
//
// They didn't click the continue image to accept the pass.
// So we will do that automatically.
//
// We could have used the same timer as timClearTrick. But just to
// keep things distinct, we use a separate timer.
//===================================================================

procedure TfrmMain.timClearPassTimer(Sender: TObject);

var
  c                       : card;

begin

  timClearPass.Enabled := False;

    // Turn off the continue image so we don't respond to it and do
    // things twice.

  frmMain.imgContinue.sendtoback;
  frmMain.imgContinue.visible := False;

  for c in receivecards[humanplayer] do begin
    imagenum := card_to_image (c, handcards[humanplayer]);
    sinkcard;
  end;

  humanstate := playing;
  starttrick;

end;

//===================================================================
// The time to view the completed trick is over.
//
// They didn't click the continue image to end the trick.
// So we will do that automatically.
//===================================================================

procedure TfrmMain.timClearTrickTimer(Sender: TObject);

var
  p                       : player;

begin

  timClearTrick.Enabled := False;

    // Turn off the continue image so we don't respond to it and do
    // things twice.

  frmMain.imgContinue.sendtoback;
  frmMain.imgContinue.visible := False;

    // Clear the trick images and do another trick, or finish the hand.

  for p in player do begin
    trickimage[p].visible := false;
  end;

  if tricknumber = 13 then begin
    finishhand;
  end
  else begin
    starttrick;
  end;

end;


//###################################################################
// GAME FLOW PROCEDURES
//###################################################################

//===================================================================
// Start to play a game
//
//  - zero everyone's score
//  - start the first hand
//===================================================================

procedure startgame;
var
  i                       : smallint;
  p                       : player;
  s                       : string = '';

begin

  gameinprogress := True;

  bugit ('Start game');

    // Make sure the heart winner symbol(s) from previous game are invisible.

    frmMain.imgSouthHeart.Visible := False;
    frmMain.imgWestHeart.Visible := False;
    frmMain.imgNorthHeart.Visible := False;
    frmMain.imgEastHeart.Visible := False;

    // Position the card images (or reposition them if any are popped
    // because the user terminated previous game in middle).

  resetcardpositions;

    // Clear the trick images.
    // If they ended the previous game normally, they will already have
    // been cleared. But if they clicked "New game" in the middle of
    // a game, could still be there.

  for p in player do begin
    trickimage[p].visible := false;
  end;

    // Make sure all the tag markers (for hints) are cleared from the last game.

  for i := 1 to 13 do begin
    tagimage[i].Visible := False;
  end;

    // Reset the gamepoints.
    // And clear out the display of the previous game's points.

  for p in player do begin
    gamepoints[p] := 0;
  end;

  clearscores;

    // Choose dealer, set direction of pass, and start the first hand.

  choosedealer;
  writestr (s, dealer);
  bugit ('Dealer: ' + s);

  passdirection := high(passway);   { Will be set to low on first hand.}
  handnumber := 0;
  starthand;

end;

//===================================================================
// Start to play a hand
//===================================================================

procedure starthand;

var
  c                       : card;
  p                       : player;
  s                       : suit;

begin

  handnumber       := handnumber + 1;
  tricknumber      := 0;
  heartsbroken     := false;
  controlbroken    := false;
  replayinprogress := false;
  passmade         := false;
  cardplayed       := false;

    // Zero everyone's points for this hand.
    // (We don't have to keep track of the point cards each
    // player accumulates through this hand. Knowing their point
    // total should be enough.)

  for p in player do begin
    handpoints[p] := 0;
  end;

    // Clear the logs of cards played in this hand.

  loghand := [];
  for p in player do begin
    logplayer[p] := [];
  end;
  for s in suit do begin
    logsuit[s] := [];
  end;

    // Clear out who has run out of the various suits.

  for p in player do begin
    for s in suit do begin
      playeroutofsuit[p,s] := false;
    end;
  end;

    // Save the state of the previous hand, if there was one,
    // in case they want to replay the *previous* hand.

  if handnumber > 1 then begin
    for p in player do begin
      saveprevioushand[p] := savecurrenthand[p];
      savepreviouspass[p] := savecurrentpass[p];
      savepreviousgamepoints[p] := savecurrentgamepoints[p];
    end;
    savepreviousscores;
    //saveprevioushandpointstext := savecurrenthandpointstext;
    //savepreviousgamepointstext := savecurrentgamepointstext;
    savepreviousdirection := savecurrentdirection;
  end;

    // Deal the cards.

  dealcards;
  bughands;
  showeveryhand;

    // Calculate next pass direction.

  if passdirection = high(passway) then begin
    passdirection := low(passway);
  end
  else begin
    passdirection := succ(passdirection);
  end;

    // Save the current situation for a possible replay of *this* hand.
    // (Can't save the pass until it is made.)

  for p in player do begin
    savecurrenthand[p] := handcards[p];
    savecurrentgamepoints[p] := gamepoints[p];
  end;
  savecurrentscores;
  savecurrentdirection := passdirection;

    // If it's hold, we can start the first trick right away.

  if passdirection = hold then begin
    starttrick;
    exit;
  end;

    // Not a hold.
    // Clear out the passcard sets.
    // Show the passing button with direction.

  for p in player do begin
    passcards[p] := [];
  end;

  case passdirection of
    toleft   : frmMain.imgPass.Picture := frmMain.imgPassLeft.Picture;
    toright  : frmMain.imgPass.Picture := frmMain.imgPassRight.Picture;
    across : frmMain.imgPass.Picture := frmMain.imgPassAcross.Picture;
  end;

  frmMain.imgPass.visible := True;

    // For all players, select the cards to pass.
    // These are just hints for the human player, unless we are doing robotplay.
    //
    // We don't pop the computer players' passing cards. We could, to
    // make things more realistic. If we do, we wouldn't pop the
    // actual cards because that would give clues since their hands
    // are sorted. Pop random cards, or pop the 3 cards closest to the
    // direction of pass.

  select3cardstopass;

    // The user is really playing
    // --------------------------
    //
    // - get the hints from the cards selected for their pass
    // - then clear out their pass because it was only for the hints
    //   (they will make their own selection manually)
    // - change program state so when they click a card, we know it's
    //   because they want to pass it
    // - exit and wait for the user to select 3 cards and click the pass button

  if robotplay = false then begin
    passhintcards := passcards[humanplayer];
    passcards[humanplayer] := [];
    humanstate := passing;
    exit;
  end;

    // The robot is playing for the user
    // ---------------------------------

    // - save the pass in case they want to replay this hand

  for p in player do begin
    savecurrentpass[p] := passcards[p];
  end;

    // - pop the robot's pass cards so they are visible on the screen

  for c in passcards[humanplayer] do begin
    imagenum := card_to_image (c, handcards[humanplayer]);
    popcard;
    humanimage[imagenum].update;
    humanimage[imagenum].update;
    humanimage[imagenum].update;
    humanimage[imagenum].update;
    sleep (robotdelay);
  end;

     // - pass everybody's cards and turn off the pass button

  pass3cards;
  frmMain.imgPass.Visible := False;
  bughands;
  showeveryhand;

    // The cards have been passed.
    // Now they need to accept their new ones.
    // Can either click the continue image, or wait for timer to run out.
    // Since the robot is playing, it is most likely that the timer is in
    // charge.

  humanstate := accepting;

  frmMain.imgContinue.bringtofront;
  frmMain.imgContinue.visible := True;

  frmMain.timClearPass.Enabled := True;

  passmade := true;

end;

//===================================================================
// Start to play a trick.
//
// There is no way we can complete a trick without user input.
// So this routine will never take us to the end of the trick.
//===================================================================

procedure starttrick;

var
  i                       : smallint;

begin

  humanstate := playing;             { just to ensure we are in right state}
  playnumber := 1;
  tricksuit := [];
  tricknumber := tricknumber + 1;

  if tricknumber = 1 then begin
    playplayer := playerwith2clubs;
  end
  else begin
    playplayer := trickwinner;
  end;

  bugit ('trick number: ' + inttostr(tricknumber));

    // Try to do each play, knowing we will stop at human player's turn
    // unless the robot is playing.

  for i := 1 to 4 do begin

    playnumber := i;
    getlegalcards;
    selectcardtoplay;  {for human player, it's just a hint, unless robot play)}

    if playplayer = humanplayer then begin
      if robotplay = false then begin
        exit;
      end;
    end;

    maketheplay;

      // Prepare player for next play.
    if playplayer = high(player) then begin
      playplayer := low(player)
    end
    else begin
      playplayer := succ(playplayer);
    end;

  end;

    // If the robot is not playing for the user, then we exited above to wait
    // for the user to make their play. But if the robot IS playing, then we
    // made all the plays and we should finish the trick.

  if robotplay then begin
    finishtrick;
  end;

end;

//===================================================================
// Finish the trick.
//
// The human player has just made their play.
// Now make the plays for the remaining computer players, if any.
//===================================================================

procedure finishtrick;

var
  c                       : card;
  i                       : smallint;
  istart                  : smallint;
  p                       : player;
  points                  : smallint;
  pointyplayers           : smallint;
  s                       : string;
  winnernumber            : smallint;

begin

  istart := playnumber + 1;

  for i := istart to 4 do begin

    playnumber := i;

    if playplayer = high(player) then begin
      playplayer := low(player)
    end
    else begin
      playplayer := succ(playplayer);
    end;

    getlegalcards;
    selectcardtoplay;
    maketheplay;

  end;

    // Who won the trick?
    // Which player played the highest card of the trick suit?
    // Assume it's the trick leader and see if anyone beat them.

  winnernumber := 1;

  for i := 2 to 4 do begin;
    c := trickcard[i];
    if c in tricksuit then begin
      if c > trickcard[winnernumber] then begin
        winnernumber := i;
      end;
    end;
  end;

  trickwinner := trickplayer[winnernumber];

  writestr (s, trickwinner);
  bugit ('trickwinner: ' + s);

    // Were there any points played in this trick?
    // If so, add them to the trick winner's points for this hand.
    // (Of course, this is provisional. They might shoot the moon.)

  points := 0;

  for i := 1 to 4 do begin
    c := trickcard[i];
    if c = queenofspades then begin
      points := points + 13;
    end
    else begin
      if c in hearts then begin
        points := points + 1;
      end;
    end;

  end;

  if points > 0 then begin
    handpoints[trickwinner] := handpoints[trickwinner] + points;
    bugit ('points: ' + inttostr(points));
  end;

    // Check to see if control is broken after the second trick.
    // (Of course, control can't be broken after just one trick.
    //  Hearts could be broken - in those rare instances where one
    //  is forced to play a heart or queen of spades in first trick -
    //  but control can't be broken because trick points all go to
    //  one player.)
    //
    // If control isn't broken already, it might be now.
    // Does more than one player have points from separate tricks?
    // If so, control is definitely broken.
    //
    // We might even know that control is broken during trick play
    // rather than wait til the end - when we know for sure that a
    // point card played cannot be taken by a player who has all the
    // points so far. Maybe add that to the maketheplay routine.

  if tricknumber >= 2 then begin
    if controlbroken = false then begin
      pointyplayers := 0;
      for p in player do begin
        if handpoints[p] > 0 then begin
          pointyplayers := pointyplayers + 1;
        end;
      end;
      if pointyplayers > 1 then begin
        controlbroken := true;
        bugit ('control broken');
      end;
    end;
  end;

    // See if any player is out of the tricksuit.
    // This knowledge could be used in future plays (by any player since it
    // is visible to all).

  for i := 2 to 4 do begin
    if not (trickcard[i] in tricksuit) then begin
      playeroutofsuit[trickplayer[i],cardsuit(trickcard[i])] := true;
    end;
  end;

    // Remove their played cards from their hand
    // (moved to maketheplay so removed from hand as they play, not at
    // end of trick)
{
  for i := 1 to 4 do begin
    p := trickplayer[i];
    c := trickcard[i];
    exclude (handcards[p],c);
  end;
  bughands;
 }

    // Now give the user a chance to see the cards played in the trick.
    //
    // We have a large control brought to the front, that means the user can
    // essentially click anywhere to indicate they are ready to proceed with
    // the next trick.
    //
    // Alternatively, the cards will be cleared away when the trick timer
    // counts down.

  frmMain.imgContinue.bringtofront;
  frmMain.imgContinue.visible := True;

  if (robotplay = true) or (humantimerson = true) then begin
    frmMain.timClearTrick.Enabled := True;
  end;

end;

//===================================================================
// Finish the hand
//
// - check to see if one player shot the moon
// - if they did, set their points to -26 and everybody else's to 0
// - add the points to each player's score
// - check to see if we have a winner
//===================================================================

procedure finishhand;
var
  g                       : shortstring;
  h                       : shortstring;
  p                       : player;
  s                       : shortstring;
  shotthemoon             : boolean = false;

begin

    // Calculate points for this hand.

  for p in player do begin
    if handpoints[p] = 26 then begin
      shotthemoon := true;
      writestr (s, p);
      bugit (s + ' shot the moon');
      break;
    end;
  end;

  if shotthemoon then begin
    for p in player do begin
      if handpoints[p] = 26 then begin
        handpoints[p] := -26;
      end
      else begin
        handpoints[p] := 0
      end;
    end;
  end;

    // Print the hand points and game points.

  for p in player do begin

    h := inttostr(handpoints[p]);
    if handpoints[p] > 0 then begin
      h := '+' + h;
    end;

    gamepoints[p] := gamepoints[p] + handpoints[p];
    g := inttostr(gamepoints[p]);

    case p of
      west : begin
        frmMain.labwesthandpoints.caption  := h;
        frmMain.labwestgamepoints.caption  := g;
      end;
      north : begin
        frmMain.labnorthhandpoints.caption := h;
        frmMain.labnorthgamepoints.caption := g;
      end;
      east : begin
        frmMain.labeasthandpoints.caption  := h;
        frmMain.labeastgamepoints.caption  := g;
      end;
      south : begin
        frmMain.labsouthhandpoints.caption := h;
        frmMain.labsouthgamepoints.caption := g;
      end;
    end;

  end;

    // Is the game over?
    // If it is, and we are robot playing, then start a new game.
    // (This might end up being nested too deep.)

  checkforwinner;

  if gamewon then begin
    finishgame;
    if robotplay then begin
      startgame;
    end;
  end
  else begin
    starthand;
  end;

end;


//===================================================================
// Finish the game
//
// - tell the winner(s)
// Note that we don't automatically start a new game. We could, but
// we leave that up to the player.
//===================================================================

procedure finishgame;

var
  p                       : player;
  s,t                     : shortstring;

begin

  s := '';
  for p in player do begin

    if p in winners then begin
      writestr (t, p);
      s := s + ' ' + t;

      gameswon[p] := gameswon[p] + 1;

      case p of

        south : begin
          frmMain.imgSouthHeart.Visible := True;
          frmMain.labSouthGamesWon.Caption := inttostr (gameswon[p]);
        end;

        west  : begin
          frmMain.imgWestHeart.Visible := True;
          frmMain.labWestGamesWon.Caption := inttostr (gameswon[p]);
        end;

        north : begin
          frmMain.imgNorthHeart.Visible := True;
          frmMain.labNorthGamesWon.Caption := inttostr (gameswon[p]);
        end;

        east  : begin
          frmMain.imgEastHeart.Visible := True;
          frmMain.labEastGamesWon.Caption := inttostr (gameswon[p]);
        end;

      end;
    end;
  end;

  bugit ('game winner(s): ' + s);
  gameinprogress := False;

end;


//###################################################################
// GAME HELP PROCEDURES AND FUNCTIONS
//
// These are used by the flow of control procedures to carry out
// specific tasks related to the gameplay.
//###################################################################



//===================================================================
// Choose the first dealer.
// We could simulate it by drawing random cards and see who is lowest.
// But we'll just choose a random number.
// There is no significance to the dealer in hearts since the lead is
// not related - it's always the player with the 2 of clubs.
//===================================================================

procedure choosedealer;
begin
  case random(4) + 1 of
    1 : dealer := south;
    2 : dealer := west;
    3 : dealer := north;
    4 : dealer := east;
  end;
end;

  //===================================================================
  // Deal the cards.
  //
  // We do not shuffle the deck and then deal that. Instead, we draw
  // cards at random and hand them out as we go. Why? Because our cards
  // are treated as sets, and you can't manipulate it to get a
  // shuffled set - it's still the same set. We could shuffle it to
  // obtain an ordered array, but that's going to too much trouble for
  // nothing.
  //
  // We respect the dealer, and deal the cards to the players in the
  // correct order, although nothing is gained by this in terms of
  // randomness. Maybe if we animated the deal this would be useful.
  //
  // We could use the pickarandomcard function to deal, but rather than
  // make 52 calls to that, we do it all in one place.
  //===================================================================

procedure dealcards;

var
  c                       : card;
  chosen                  : cardset;
  found                   : boolean;
  i                       : longint;
  m                       : smallint;
  p                       : player;
  r                       : longint;

begin
  bugit ('Deal cards');
  chosen := [];
  for p in player do begin
    handcards[p] := [];
  end;
  p := dealer;

  for i := 52 downto 1 do begin
    if p = high (player) then begin
      p := low (player);
    end
    else begin
      p := succ(p);
    end;
    r := random (i) + 1;
    m := 0;
    found := False;

    for c in card do begin
      if not (c in chosen) then begin
        m := m + 1;
        if m = r then begin
          found := true;
          break;
        end;
      end;
    end;

    if not found then begin
      Showmessage ('Could not draw a random card');
      halt;
    end;

    include (chosen,c);
    include (handcards[p],c);

  end;

end;

//===================================================================
// Select 3 cards to pass for each player.
//
//===================================================================

procedure select3cardstopass;

var
  p                       : player;

begin

  for p in player do begin
    selectforthisplayer(p);
  end;

end;

//===================================================================
// Select 3 cards to pass for one player.
//
// For the human player, they are just fodder for the hints. But if
// the robot is playing for the human, then they will actually be the
// cards that get passed.
//===================================================================

procedure selectforthisplayer(p : player);

var
  c                       : card;
  clubcount               : smallint;
  diamondcount            : smallint;
  hc                      : cardset;
  heartcount              : smallint;
  i                       : smallint;
  pc                      : cardset;
  passcount               : smallint = 0;
  queenpassed             : boolean = false;
  slotsleft               : smallint;
  spadecount              : smallint;
  xc                      : cardset;

begin

  hc := handcards[p];      {So we don't touch their original hands until the cards
                            are actually passed. Also, a handier shorter name.}
  pc := [];                {A handier name for passcards[].}

  spadecount := countcards (hc * spades);

    // Pass the queen of spades if we have 4 or fewer spades in total

  if     (queenofspades in hc)
     and (spadecount <= 4) then begin
     include (pc, queenofspades);
     exclude (hc, queenofspades);
     queenpassed := true;
  end;

    // Pass the king/ace of spades unless we have 4 kickers,
    // or unless we passed the queen to the right (because then we
    // play after the hand with the queen, and hopefully will not
    // only avoid it, but maybe even use the king or ace to take a
    // spade trick and come back into that hand).

  if    (kingofspades in hc)
     and (spadecount <= 4)
     and (not (    (passdirection = toright)
               and (queenpassed = true))) then begin
    include (pc, kingofspades);
    exclude (hc, kingofspades);
  end;

  if    (aceofspades in hc)
     and (spadecount <= 4)
     and (not (    (passdirection = toright)
               and (queenpassed = true))) then begin
    include (pc, aceofspades);
    exclude (hc, aceofspades);
  end;

    // At this point, if we had q,k,a of spades in our hand we may have
    // decided to pass them all. Better check if we are done.

  passcount := countcards (pc);
  if passcount = 3 then begin
    passcards[p] := pc;
    exit;
  end;

    // If we still have cards to pass, can we empty a suit (except for spades).
    // Of course this ignores the fact that we may be passing very low cards
    // which isn't a good idea.

  clubcount := countcards (hc * clubs);
  if clubcount <= (3 - passcount) then begin
    pc := pc + (hc * clubs);
    hc := hc - clubs;
  end;

  passcount := countcards (pc);
  if passcount = 3 then begin
    passcards[p] := pc;
    exit;
  end;

  diamondcount := countcards (hc * diamonds);
  if diamondcount <= (3 - passcount) then begin
    pc := pc + (hc * diamonds);
    hc := hc - diamonds;
  end;

  passcount := countcards (pc);
  if passcount = 3 then begin
    passcards[p] := pc;
    exit;
  end;

  heartcount := countcards (hc * hearts);
  if heartcount <= (3 - passcount) then begin
    pc := pc + (hc * hearts);
    hc := hc - hearts;
  end;

  passcount := countcards (pc);
  if passcount = 3 then begin
    passcards[p] := pc;
    exit;
  end;

    // And if still have any slots, then fill them with our highest cards
    // outside of spades, already dealt with. But it could be all we have
    // left is spades (an unusual hand, but possible). So if all else fails,
    // pick random cards.

  xc := hc - spades;
  slotsleft := 3 - passcount;

  case countcards (xc) - slotsleft of

    0..13 : begin                       {actually 0 to 12 since if there were 0 slots
                                         left we wouldn't be here}
       for i := 1 to slotsleft do begin
         c := highestofall (xc);
         include (pc, c);
         exclude (xc, c);
       end;
    end;

    else begin                          {not enough cards left if we take all the
                                         spades out, to cover the passing slots left}
      for i := 1 to slotsleft do begin
        c := pickarandomcard (hc);      {note: hc, not xc, because xc doesn't have enough}
        include (pc, c);
        exclude (hc, c);
      end;

    end;

  end;

  passcards[p] := pc;

end;




//===================================================================
// Pass the cards.
//===================================================================

procedure pass3cards;

var
  c                       : card;
  p                       : player;
  source                  : array [player] of player;

begin

    // First sink the human's pass cards.

  for c in passcards[humanplayer] do begin
     imagenum := card_to_image (c, handcards[humanplayer]);
     sinkcard;
  end;


    // Determine where everybody gets their cards from.
    // We could use succ and prev functions, but then there are so many
    // exceptions (and across) that it's easier to just spell it out.

  case passdirection of

      toleft: begin
        source[south] := east;
        source[west]  := south;
        source[north] := west;
        source[east] := north;
      end;

      toright: begin
        source[south] := west;
        source[west]  := north;
        source[north] := east;
        source[east]  := south;
      end;

      across: begin
        source[south] := north;
        source[west]  := east;
        source[north] := south;
        source[east]  := west;
      end;

  end;

    // Pass the cards
    // (These are set operators)

  for p in player do begin
    receivecards[p] := passcards[source[p]];
    handcards[p] := handcards[p] - passcards[p] + receivecards[p];
  end;

    // Pop the cards that got passed to the human user
    // We have to reshow the hand to make the images correspond to the
    // cards that got passed.

  showhand(humanplayer);
  for c in receivecards[humanplayer] do begin
    imagenum := card_to_image (c, handcards[humanplayer]);
    popcard;
  end;

end;

//===================================================================
// Who has the 2 of clubs?
//
// For the first trick, whoever has the 2 of clubs must lead it.
//===================================================================

function playerwith2clubs : player;

var
  found                   : boolean = false;
  p                       : player;

begin

  for p in player do begin
    if twoofclubs in handcards[p] then begin
      result := p;
      exit;
    end;
  end;

  if found = false then begin
    showmessage ('Could not find player with 2 clubs');
    halt;
  end;

end;

//===================================================================
// What cards in this hand are legal to play?
//
// For the human player, the set is used to verify that the card they
// select to play is legal.
//
// For the computer players, we will select a card for them from this
// set.
//
// We use this information:
//   - trick number  (because first trick has special rules)
//   - play number   (are they leading - or following suit)
//   - trick suit    (the suit they have to follow, if not first play)
//   - hearts broken (is it legal to play hearts yet)
//   - the player    (only needed to get the set of cards to examine)
//   - the hand      (or whatever is left in their hand at this point)
//===================================================================

procedure getlegalcards;

var
  x                       : cardset;

begin

  case tricknumber of

    1 : begin

      case playnumber of

        1 : begin

            // If it's the first trick and the first play, then the only legal
            // card is the 2 of clubs. We should have already determined who
            // that player is, and this should just be a formality.

          if twoofclubs in handcards[playplayer] then begin
            playlegal := [twoofclubs];
          end
          else begin
            showmessage ('Cannot find 2 of clubs in selected hand');
            halt;
          end;

        end; {begin}

        else begin

            // The remaining payers of trick 1 have to play a club, if they have one.

          x := handcards[playplayer] * clubs;
          if not (x = []) then begin
            playlegal := x;
            exit;
          end;

            // If all they have is hearts, then they can play any of them.

          if handcards[playplayer] = hearts then begin
            playlegal := handcards[playplayer];
            exit;
          end;

            //  If all they have is the queen of spades and 12 hearts, then
            //  they must play the queen of spades (and not a heart, in order
            //  to conform with later tricks where they might have queen of
            //  spades and remainder all hearts and hearts is not broken - they
            //  then must play queen of spades)

          if     (queenofspades in handcards[playplayer])
             and ((handcards[playplayer] - [queenofspades]) <= hearts) then begin
            playlegal := [queenofspades];
            exit;
          end;

            // They don't have a club, and they don't have one of the above
            // rare hands. They can play any card except a heart or queen of spades.

          playlegal := handcards[playplayer] - ([queenofspades] + hearts);

        end; {begin}

      end; {case playnumber}

    end; {trick number 1}

      // Trick number 2->13

    else begin

      case playnumber of

        1 : begin
 
            // If hearts are broken they can lead any card.

          if (heartsbroken = true) then begin
            playlegal := handcards[playplayer];
            exit;
          end;

            // Hearts aren't broken. If all they have is hearts they can
            // lead any of their cards. But if they have cards besides hearts,
            // they must lead one of those non-hearts.

          if handcards[playplayer] <= hearts then begin
            playlegal := handcards[playplayer];
          end
          else begin
            playlegal := handcards[playplayer] - hearts;
          end;

        end; {begin}

        else begin
 
            // Not the first trick. Not the lead.
            // If they can follow suit, they must.
            // Otherwise, any card including queen of spades or a heart.

          x := handcards[playplayer] * tricksuit;
          if x = [] then begin
            playlegal := handcards[playplayer];
          end
          else begin
            playlegal := x;
          end;

        end; {begin}

      end; {case playnumber}

    end;

  end; {case tricknumber}



end;

//===================================================================
// Select a card to play.
// For a computer player, it's the actual card they will play.
// For the human player, it just becomes the hint.
//===================================================================

procedure selectcardtoplay;

var
  n                       : smallint;

begin

    // If they have only one legal card to play, no need to go further

  n := countcards (playlegal);
  if n = 1 then begin
    playcard := cardpos_to_card (1, playlegal);
    exit;
  end;

  chooseplayingcard;

end;

//===================================================================
// Given the actions for this situation, determine a card to play.
//===================================================================

procedure chooseplayingcard;
begin

    // For now, just make a basic play.
    // Later, we will handle going for control, blocking control, scores, etc.

  basicplay;

end;

//===================================================================
// Play the card.
//===================================================================

procedure maketheplay;

var
  s                       : string;

begin

  trickcard[playnumber] := playcard;
  trickplayer[playnumber] := playplayer;

  writestr (s, playplayer);
  bugit (s + ': ' + cards_to_cardnames([playcard]));

    // Copy image to the centre

  trickimage[playplayer].picture := cardimage[playcard].picture;
  trickimage[playplayer].visible := true;
  trickimage[playplayer].bringtofront;

    // Remove card from hand - both image and card in cardset.

  removecard (playcard, playplayer);

    // If the robot is playing, force a screen update, and sleep to give
    // time for the play to be seen. (We do this update after the card is
    // removed from the hand so hopefully we won't momentarily see the card
    // in both the hand and the centre.)

  if robotplay then begin
    trickimage[playplayer].Update;
    trickimage[playplayer].Update;
    trickimage[playplayer].Update;
    trickimage[playplayer].Update;
    sleep (robotdelay);
  end;

    // Establish the suit.
    //
    // If it's the first play of this trick, then remember that.
    // Note that we don't just determine a label for the suit, but
    // all the cards in the suit - because that is what we are going to test
    // the next played cards against.

  playsuit := cardsuit (playcard);

  if playnumber = 1 then begin

    case playsuit of
      club    : tricksuit := clubs;
      diamond : tricksuit := diamonds;
      spade   : tricksuit := spades;
      heart   : tricksuit := hearts;
    end;

  end;

    // Did we just break hearts?
    // Playing the queen of spades also breaks hearts.

  if heartsbroken = false then begin
    if (playcard in hearts) or (playcard = queenofspades) then begin
      heartsbroken := true;
      bugit ('hearts broken');
    end;
  end;

    // Log the played card.
    // This is public information, available to all players.
    // (And we assume the computer players have perfect memories.)

  include (loghand, playcard);
  include (logplayer[playplayer], playcard);
  include (logsuit[playsuit], playcard);

end;

//===================================================================
// Check to see if we have a winner.
//
// - first check to see if anyone has a score of 100 or more
// - if so, find the player with the lowest score
//     (there could be a tie, so allow for more than one winner)
// - note too, that the winning score could be 100 or more in the
//     case where everybody blows the 99 limit
//===================================================================

procedure checkforwinner;

var
  lowestscore             : smallint = 2000;  {an impossibly high score}
  p                       : player;

begin

  gamewon := false;

  for p in player do begin
    if gamepoints[p] >= 100 then begin
      gamewon := true;
      break;
    end;
  end;

  if gamewon = false then begin
    exit;
  end;

  winners := [];

  for p in player do begin
    if gamepoints[p] < lowestscore then begin
      lowestscore := gamepoints[p];
      winners := [p];
    end
    else
      if gamepoints[p] = lowestscore then begin
      winners := winners + [p];
    end;

  end;

end;

//###################################################################
// STRATEGY ROUTINES
//###################################################################

//===================================================================
// Basic playing checks.
//
// These are meant to look for the most basic situations when card
// playing, until we get something that searches a little deeper.
// We don't take into account:
//    - the game score
//    - going for control (ourself or others)
//
// Here we just determine the whether we are:
//    - leading the trick
//    - not leading the trick
//        - don't have any cards of the suit led
//        - have to follow spade suit
//        - have to follow hearts suit
//        - have to follow clubs or diamonds suit
//
// Then we pass off to specific routines for those situations.
//===================================================================

procedure basicplay;

var
  i                       : smallint;

begin

    // Put the trick cards played so far into a set.
    // Then extract just the cards that are of the tricksuit.

  trickset := [];
  for i := 1 to playnumber - 1 do begin
    include (trickset, trickcard[i]);
  end;
  tricksetsuitcards := trickset * tricksuit;

  if playnumber = 1 then begin
    basicleading;
  end
  else begin
    if playlegal * tricksuit = [] then begin
      basicnotleadingnotfollowingsuit;
    end
    else begin
      if tricksuit = spades then begin
        basicfollowspades;
      end
      else begin
        if tricksuit = hearts then begin
          basicfollowhearts;
        end
        else begin
          basicfollowother;
        end;
      end;
    end;
  end;

end;

//===================================================================
// Basic, leading the trick.
//
// First we check for special situations surrounding the queen of
// spades, since it is the scariest:
//   - if I have the queen of spades, can I force someone else to take
//     it because all they have left if the king and/or the ace of spades
//   - if someone else has just the queen of spades, can I force them to
//     play it by leading a spade myself (not king or ace of course)
//   - if someone else has the queen of spades, and I don't have the
//     king or ace, just play a spade hoping they will have to drop it
//   - if someone else has the queen of spades, and I do have the
//     king and/or ace, if I still have a large number of spades so
//     I won't be forced to take the queen with the king or ace in future
//     tricks, then play a non king/ace spade now to still try to get
//     the queen to drop
//
// If none of the above apply, then take a look at what's in my set of
// cards legal to play. Since I am leading, and since this is not the
// first trick (because we don't come here since the first trick is always
// led by the two of clubs), that means the legal set is probably the
// same as all the cards in my hand right now - with the possible exception
// of hearts, if hearts isn't broken.
//
// To narrow my choice of lead down, eliminate all the cards for which only
// I have cards of that suit, because if I play one of them, I will
// certainly take the trick. At the beginning of the game, it's not likely
// there will be suits where I have all the cards left of that suit. But
// towards the end there will be, so we want to avoid playing one of those.
//
// Once eliminated, we check to see what's left.
//   - if nothing left, then I guess we are going to get all the
//     remaining tricks
//   - if just one card left, then play that and hope someone else
//     takes the trick (and then I will avoid all the rest)
//   - otherwise, select the best card to play based on how many
//     cards of those suits have already been played
//===================================================================

procedure basicleading;

var
  bestlegal               : cardset;        {not forced to take a trick, we hope}
  c                       : card;
  spadesleft              : cardset;        {all unplayed spades}
  spadesmine              : cardset;        {all my unplayed spades}
  spadesothers            : cardset;        {all others unplayed spades}
  spadesx                 : cardset;        {my unplayed spades minus king, ace}

begin

  spadesleft := spades - (loghand * spades);
  spadesmine := playlegal * spades; { If I'm leading, then any spade in my hand
                                      is legal to play, and so is in here. Why?
                                      Because this is not the first trick. This
                                      routine will not be called for the first
                                      trick because then only the 2 of clubs is
                                      legal as the lead, and this routine is not
                                      called when there is only 1 card in the
                                      legal set.}
  spadesothers := spadesleft - spadesmine;
  spadesx := spadesmine - [kingofspades, aceofspades];

    // Can I force someone to take my queen of spades?
    // We can if all that's left out there in terms of spades (outside
    // my hand) is the king and/or the ace of spades.
    //
    // (Note we have to check for empty set, because empty set is a
    // subset of every set.)

  if     (queenofspades in spadesmine)
     and (spadesothers <= [kingofspades, aceofspades])
     and (not (spadesothers = [])) then begin
    playcard := queenofspades;
    bugit ('Forcing someone to take my queen of spades');
    exit;
  end;

    // Can I force someone to play their queen of spades?
    // I can if the queen of spades is the only other spade out there
    // besides what I have in my hand, and if I have a spade to lead
    // other than the king or ace.

  if     (spadesothers = [queenofspades])
     and (not (spadesx = [])) then begin
    playcard := pickarandomcard(spadesx);
    exit;
    bugit ('Forcing someone to swallow their own queen of spades');
  end;

    // If the queen of spades is in someone else's hand still, and I don't have
    // either the king or ace of spades, but I do have at least one
    // spade, then play the highest spade I have. (And if the queen of spades
    // doesn't fall now, maybe I take the trick and try to lead another
    // spade next trick.)

  if     (queenofspades in spadesothers)
     and (([kingofspades, aceofspades] * spadesmine) = [])
     and (not (spadesmine = [])) then begin
    playcard := highestofall (spadesmine);
    bugit ('Hoping to make the queen drop - without fear');
    exit;
  end;

    // Can I try to get the queen of spades to drop?
    // If it hasn't come out yet, and I don't have it, and I have a
    // sufficient number of spades not to worry about getting it later myself,
    // then lead a spade - but not the king or ace.

    if     (queenofspades in spadesothers)
       and (countcards(spadesx) >= countcards(spadesothers)) then begin
      playcard := highestofall(spadesx);
      bugit ('Hoping I have enough spades to make queen drop and not get it');
      exit;
    end;

    // Don't want to lead a card for which only I have cards of that suit left
    // because I will be forced to take that trick.
    // (Of course, sometimes will want to do this, eg to break control, or when
    // going for control. But we don't take that into account in this routine.
    // We might use separate routines to handle those cases.)

  bestlegal := playlegal;

  if (clubs - (loghand*clubs)) = (handcards[playplayer] * clubs) then begin
    bestlegal := bestlegal - (handcards[playplayer] * clubs);
  end;

  if (diamonds - (loghand*diamonds)) = (handcards[playplayer] * diamonds) then begin
    bestlegal := bestlegal - (handcards[playplayer] * diamonds);
  end;

  if (spades - (loghand*spades)) = (handcards[playplayer] * spades) then begin
    bestlegal := bestlegal - (handcards[playplayer] * spades);
  end;

  if (hearts - (loghand*hearts)) = (handcards[playplayer] * hearts) then begin
    bestlegal := bestlegal - (handcards[playplayer] * hearts);
  end;

    // If I'm left with nothing, then it doesn't matter what I play since I
    // am perforce going to have to take all the remaining tricks.

  if bestlegal = [] then begin
    playcard := pickarandomcard (playlegal);
    bugit ('Have to lead and take all remaining tricks');
    exit;
  end;

    // If I'm left with just 1 card that "may" not take a trick, play that.

  if countcards(bestlegal) = 1 then begin
    playcard := cardpos_to_card (1, bestlegal);
    bugit ('Leading only card I have of suit that others still have');
    exit;
  end;

    // Reduce the set of cards I want to play by the q/k/a of spades
    // I should still have at least 1 card left after that, because
    // these are all trick takers, and I have gotten to the point where
    // I have some card(s) that are not trick takers. But we'll cover
    // that just in case. Same as preceding.

  bestlegal := bestlegal - [queenofspades, kingofspades, aceofspades];

  if bestlegal = [] then begin
    playcard := pickarandomcard (playlegal);
    bugit ('Have to take remaining tricks');
    exit;
  end;

  if countcards(bestlegal) = 1 then begin
    playcard := cardpos_to_card (1, bestlegal);
    bugit ('Just one card left that might not take a trick');
    exit;
  end;

    // OK, now I have at least 2 cards that won't necessarily take a trick.
    //
    // At least from the point of view that there are others of the same suit
    // out there. But it could be that I have all the high cards of that suit
    // (or suits) and will have to take the trick for that reason.
    //
    // We could (should) check to see what other cards of the suits I have are
    // out there. But for the moment we won't get that refined.
    //
    // Note that for the next tests, we are using "bestlegal", the cardset
    // reduced by eliminating cards from suits where I have all the remaining
    // ones, and the high spades.

    // Lead a high diamond, if only a very few have been played and I have one.

  if     (countcards (loghand * diamonds) <= 2)
     and (not (bestlegal * diamonds = [])) then begin
    playcard := highestofsuit (bestlegal, diamonds);
    bugit ('Few diamonds played already, playing highest I have');
    exit;
  end;

    // Lead a low club, if only a few have been played and I have one.

  if     (countcards (loghand * clubs) <= 4)
     and (not (bestlegal * clubs = [])) then begin
    c := lowestofsuit (bestlegal, clubs);
    if cardrank (c) < 8 then begin
      playcard := c;
      bugit ('Few clubs played already, still leading lowest I have');
      exit;
    end;
  end;

    // Lead a low heart if hearts are broken and I have one.

  if not ((bestlegal * hearts) = []) then begin
    c := lowestofsuit (bestlegal, hearts);
    if cardrank (c) < 8 then begin
      playcard := c;
      bugit ('Leading a low heart');
      exit;
    end;
  end;

    // Lead a spade if the queen has dropped already, since no more danger.

  if     (queenofspades in loghand)
     and (not (bestlegal * spades = [])) then begin
    playcard := lowestofsuit (bestlegal, spades);
    bugit ('Leading a low spade, after queen is gone');
    exit;
  end;

    // Lead a low diamond, if more than a few have been played and I have one.

  if     (countcards (loghand * diamonds) > 2)
     and (not (bestlegal * diamonds = [])) then begin
    c := lowestofsuit (bestlegal, diamonds);
    if cardrank(c) < 8 then begin
      playcard := c;
      bugit ('Several diamonds played already, leading lowest I have');
      exit;
    end;
  end;

    // If all else fails, play the lowest card I have from my legal set.

  playcard := lowestofall(playlegal);
  bugit ('Leading lowest I have');

end;

//===================================================================
// Basic, not leading, not following suit.
//
// This is the opportunity to get rid of my dangerous cards.
// In order of desirability of getting rid of:
//   - drop the queen of spades
//   - get rid of the ace or king of spades - unless we need it
//       to protect the queen. How could this happen? Wouldn't
//       we have dropped the queen in the test just above? Normally,
//       yes. But it is possible that we can have the queen and king
//       and/or ace in our hand, but the queen is not in our legal
//       set while the king and ace are - namely on the first trick.
//       Hence the need for this extra caveat.
//   - get rid of hearts
//   - play highest card I have
//
// Could refine this a lot. eg why get rid of the ace of spades if
// the queen has already dropped, or if there are no other spades
// out there to get back in my hand. Would be better to get rid of
// some other high cards. Should examine to see what is still out
// there.
//===================================================================

procedure basicnotleadingnotfollowingsuit;

begin

  if queenofspades in playlegal then begin
    playcard := queenofspades;
    exit;
  end;

  if     (aceofspades in playlegal)
     and (not (queenofspades in handcards[playplayer])) then begin
    playcard := aceofspades;
    exit;
  end;

  if     (kingofspades in playlegal)
     and (not (queenofspades in handcards[playplayer])) then begin
    playcard := kingofspades;
    exit;
   end;

  if not ((playlegal * hearts) = []) then begin
    playcard := highestofsuit (playlegal, hearts);
    exit;
  end;

  playcard := highestofall (playlegal);

end;


//===================================================================
// Basic, following spades.
//
//   - if k or a played before me in this trick, and I have q, play it

//   - if I am last in this trick, and q not played before me, and I
//     have k or a, play it
//   - if q played in some previous trick, and I have k or a, play it
//   - what about if I have the queen, and I am playing second or third,
//     and I know the only spades left out there at this point are the
//     king and/or ace. should I play my queen? no. you cannot know that
//     the player(s) after you have the king or ace, it could be the
//     trick leader has one or both of them. after all they did lead
//     spades, and we don't know what they have left in their hands, or
//     if the players after me have any spades at all.
//   - however, if I have the queen (and the king or ace was not played
//     before me, play any other spade I have rather than play the queen.
//   - avoid taking the trick
//===================================================================

procedure basicfollowspades;

begin

  if      ((kingofspades in trickset) or (aceofspades in trickset))
      and (queenofspades in playlegal) then begin
    playcard := queenofspades;
    exit;
  end;

  if      (playnumber = 4)
      and (not (queenofspades in trickset))
      and ((kingofspades in playlegal) or (aceofspades in playlegal)) then begin
    playcard := highestofall (playlegal);
    exit;
  end;

  if      (queenofspades in (loghand - trickset))
      and ((kingofspades in playlegal) or (aceofspades in playlegal)) then begin
    playcard := highestofall (playlegal);
    exit;
  end;

  if     (queenofspades in playlegal)
     and (not ((playlegal - [queenofspades]) = [])) then begin
    playcard := highestofall (playlegal - [queenofspades]);
    exit;
  end;
    // This covers the case where the queen has been played in this trick and
    // I want to avoid it, or it may be played after me and I want to avoid it.

  playcard := cardtoavoidtrick;

end;

//===================================================================
// Basic, following hearts.
//
// We don't want any hearts. We should refine this by considering
// if control is not broken, and the mooted controller has a bunch
// of points, and will win this trick, and I can break control by
// playing last (without taking queen of spades), then do so
//===================================================================

procedure basicfollowhearts;

begin

  playcard := cardtoavoidtrick;

end;

//===================================================================
// Basic, following clubs or diamonds.
//
// If the queen of spades has been played in the trick, try to avoid
// it.
//
// If I'm playing last (and the queen of spades is not in the trick
// because we just handled that), then play our highest card (club or
// diamond, remember we are following suit). This isn't always a good
// idea - for example if it forces me to lead and take all the
// remaining tricks when I could have avoided it by playing a smaller
// club or diamond. We'll refine that later.
//
// What about if I'm playing last (and there is no queen of spades?)
// Maybe should take it. Unless I have all the rest, that would
// force me to lead, and maybe don't want to.
//===================================================================

procedure basicfollowother;

begin

  if queenofspades in trickset then begin
    playcard := cardtoavoidtrick;
    exit;
  end;

  if playnumber = 4 then begin
    playcard := highestofall(playlegal);
    exit;
  end;

  if    ((tricksuit = clubs)    and (countcards (logsuit[club])    <=4))
     or ((tricksuit = diamonds) and (countcards (logsuit[diamond]) <=4)) then begin
    playcard := highestofall (playlegal);
    end
  else begin
    playcard := cardtoavoidtrick;
  end;

end;

//===================================================================
// Choose a card based on me trying to go for control.
//===================================================================

procedure getcontrolplay;

//var

begin

  playcard := pickarandomcard(playlegal);

end;

//===================================================================
// Choose a card based on me trying to stop another player going
// for control.
//===================================================================

procedure stopcontrolplay;

//var

begin

  playcard := pickarandomcard(playlegal);

end;

//===================================================================
// Calculate the relative standing of each player with respect to
// the current score (not including any potential points taken in
// this hand.
//
// Note that ties can result in rankings like 1 1 3 4 or 1 2 2 4 etc.
// So a player's standing is the count of how many player's have a
// score less than that player + 1. eg scores and standing:
//       78   4
//       55   2
//       55   2
//       24   1
//===================================================================

procedure calculateplayerstandings;

var
   lessthanmecount        : smallint;
   mypoints               : smallint;
   p                      : player;
   xp                     : player;

begin

  for p in player do begin
    mypoints := gamepoints[p];
    lessthanmecount := 0;
    for xp in player do begin
      if p <> xp then begin
        if gamepoints[xp] < mypoints then begin
          lessthanmecount := lessthanmecount + 1;
        end;
      end;
    end;
    playerstanding[p] := lessthanmecount + 1;
  end;

end;

//===================================================================
// Calculate the danger each player is in based on the score they
// have. The higher the points, the greater the danger.
//===================================================================

procedure calculateplayerdangers;

var
  d                       : smallint;
  p                       : player;

begin

  for p in player do begin;
    case gamepoints[p] of
      -9000..-1 : d := 0;
          0..20 : d := 1;
         21..35 : d := 2;
         36..50 : d := 3;
         51..69 : d := 4;
         70..75 : d := 5;
         76..86 : d := 6;
         87..91 : d := 7;        { the queen of spades would put them out}
         92..96 : d := 8;
         97..99 : d := 9;
         else     d := 9;
    end;
    playerdanger[p] := d;
  end;

end;

//===================================================================
// Is it OK to drop the queen of spades? (or to force it out)
//
// If it means the player who takes would bust 100, and I would lose
// then I don't want to do it.
//
// p is the player making the play, q is the player who would get it.
// Sometimes, we aren't sure who would get it (eg if we aren't
// playing last, we might not know). In that case, q is the same as p
// just to let us know this is the case.
//===================================================================

function oktodropqueen (p: player; q: player) : boolean;

var
  dropit                  : boolean;

begin

    // If I am in first place, then OK to drop/force queen of spades
    // regardless of anything else. (But we should take into account
    // points taken in this hand, even if can't be certainly ascribed.)

  calculateplayerstandings;
  if playerstanding[p] = 1 then begin
    result := true;
    exit;
  end;

    // I am not in first place.
    // If I don't know the target, then I will drop it if I am in danger,
    // otherwise will not. The latter is a little risky.
    // If I do know the target, then I will drop it if they are not in danger,
    // otherwise will not (because they could bust and I am not in first, so
    // would lose).

  calculateplayerdangers;

  case p=q of

    true : begin
      case playerdanger[p] of
        0..5 : dropit := false;
        else   dropit := true;
      end;
    end;

    false : begin
      case playerdanger[q] of
        0..5 : dropit := true;
        else   dropit := false;
      end;
    end;

  end;

  result := dropit;

end;

//===================================================================
// Project trick winner.
// It's important to know who is certainly, or likely going to win
// the trick, before I play. It affects the decision to drop the
// queen, drop a heart, etc.
//===================================================================

procedure projecttrickwinner;

begin

end;

//===================================================================
// Does it look like someone might get control?
// Identify player who has potential to get control, based on points
// taken in this hand.
//===================================================================

procedure checkforcontrol;

begin

end;


//###################################################################
// CARD DISPLAY ROUTINES
//###################################################################


//===================================================================
// Reset the positions of all the players' cards.
// You would think we would only have to do this once, when the form
// is loaded. However, cards can be popped for passing and accepting.
// So, if the user clicks for a new game - or clicks to replay a
// hand - while some cards are popped, then they have to be reset.
// Rather than keep track of what is out of position, we reset at
// the start of each game or when replaying a hand.
//===================================================================

procedure resetcardpositions;

var
  firstleft               : smallint;
  firsttop                : smallint;
  horizontalinterval      : smallint;
  i                       : smallint;
  p                       : player;
  verticalinterval        : smallint;

begin

  for p in player do begin

    case p of

      south: begin
        firstleft          := 230;
        firsttop           := 500;
        horizontalinterval := 20;
        verticalinterval   := 0;
      end;

      west:  begin
        firstleft          := 100;
        firsttop           := 165;
        horizontalinterval := 0;
        verticalinterval   := 25;
      end;

      north: begin
        firstleft          := 230;
        firsttop           := 130;
        horizontalinterval := 20;
        verticalinterval   := 0;
      end;

      east: begin
        firstleft          := 600;
        firsttop           := 165;
        horizontalinterval := 0;
        verticalinterval   := 25;
      end;

    end;

    case p of

      west, north, east : begin

        for i := 1 to 13 do begin
          handimage[p,i].Left := firstleft + horizontalinterval*(i-1);
          handimage[p,i].Top  := firsttop  + verticalinterval*(i-1);
        end;

      end;

      south : begin

        for i := 1 to 13 do begin
          humanimage[i].Left  := firstleft + horizontalinterval*(i-1);
          humanimage[i].Top   := firsttop  + verticalinterval*(i-1);
          humanimage[i].bringtofront;
        end;

      end;

    end;  {end case}

  end; {end for}

end;

//===================================================================
// Show the beginning hands.
// The human player's is always exposed.
// The computer players' hands usually just show the back, but can
// show the front for learning/degugging purposes.
//===================================================================

procedure showeveryhand;

var
  p                       : player;

begin

  for p in player do begin
    showhand(p);
  end;

end;

//===================================================================
// Show a hand.
//
// Whether: full 13 cards, or fewer
//          human or computer player
//          revealing all cards or showing backs
//
// We used to do it in a more minimal fashion, eg when a card was
// played, we would shift just the images necessary. But that didn't
// save much and just made it needlessly complex.
//
// We bias to the left. That is, we have an odd number of card
// positions at the start - 13. When the hand contains an odd number
// cards, then we will have an even number of empty positions, so we
// can balance on each side. When the hand contains an even number of
// cards, there will be an odd number of empty positions, and we put
// the extra open spot on the right. (We could center them, but we
// want to display the cards in the same fixed slots on the screen.)
//===================================================================

procedure showhand (p : player);

var
  c                       : card;
  i                       : smallint;
  n                       : smallint;
  start                   : smallint;

begin

  n := countcards (handcards[p]);
  start := ((13 - n) div 2) + 1;

  case p of

    south: begin
      for i := 1 to 13 do begin
        humanimage[i].visible := false;
      end;
      i := start - 1;
      for c in handcards[p] do begin
        i := i + 1;
        humanimage[i].picture := cardimage[c].picture;
        humanimage[i].visible := True;
      end;
    end;

    else begin                        {west, north, east}

      for i := 1 to 13 do begin
        handimage[p,i].visible := false;
      end;

      case reveal of

       true: begin
         i := start - 1;
         for c in handcards[p] do begin
           i := i + 1;
           handimage[p,i].picture := cardimage[c].picture;
           handimage[p,i].visible := true;
         end;
       end;

       false: begin
         for i := start to start + n - 1 do begin
           handimage[p,i].picture := backimage.picture;
           handimage[p,i].visible := true;
         end;
       end;

     end; {end case reveal}
  end; {end west,north, east}

  end; {end case p}

end;

//===================================================================
// Remove a card from hand visually and actually.
//===================================================================

procedure removecard (c : card; p: player);

begin
  exclude (handcards[p],c);
  showhand (p);
end;

//===================================================================
// Pop this card up in hand.
// Could be for passing, or as receiving the pass.
//===================================================================

procedure popcard;

begin
  humanimage[imagenum].Top := humanimage[imagenum].Top - 30;
end;

//===================================================================
// Sink this card back down in hand.
// Could be for passing (changed their mind), or as accepting the pass.
//===================================================================

procedure sinkcard;

begin
  humanimage[imagenum].Top := humanimage[imagenum].Top + 30;
end;

//===================================================================
// Tag all the tagged cards (one for playing, 3 for passing).
//===================================================================

procedure tagcard;

var
  c                       : card;

begin
  for c in tagcards do begin
    imagenum := card_to_image (c, handcards[humanplayer]);
    tagimage[imagenum].Visible := True;
    tagimage[imagenum].bringtofront;
  end;
end;

//===================================================================
// Untag all the tagged cards.
//===================================================================

procedure untagcard;

var
  c                       : card;

begin

  for c in tagcards do begin
    imagenum := card_to_image (c, handcards[humanplayer]);
    tagimage[imagenum].Visible := False;
  end;

  tagcards := [];

end;


//===================================================================
// Print each hand on debug form.
//
// We do this after dealing, and after passing.
// We also used to do this after each trick. That is why there is a
// check for empty hand (no special reason to choose south), to
// suppress the debug printing after the 13th trick.
//===================================================================

procedure bughands;

begin

  if handcards[south] = [] then begin
  end
  else begin
    bugit ('South: ' + cards_to_cardnames(handcards[south]));
    bugit ('West:  ' + cards_to_cardnames(handcards[west]));
    bugit ('North: ' + cards_to_cardnames(handcards[north]));
    bugit ('East:  ' + cards_to_cardnames(handcards[east]));
  end;

end;

//===================================================================
// Print a line of info on the debug form.
//===================================================================

procedure bugit (s : string);
begin
  if debug = True then begin
    frmDebug.memDebug.lines.Add(s)
  end;
end;

//###################################################################
// ONSCREEN SCORES
//
// Clear/save/restore onscreen scores.
//
// These routines could be integrated into the spots were they are
// called from. They are not logically distinct from them. The only
// reason to have separate routines is because they are so long
// and that's because of having to use separate label fields for each
// value. We used to use one label field covering all 4 players,
// but that did not work well when transferring from Linux to Windows
// because the Linux monotype font required for alignment did not
// get converted into a monotype field on Windows, and so the scores
// did not line up under the little player pictures.
//
// It's a bit tedious to do it this way - would be easier if there
// were control arrays.
//###################################################################


//===================================================================
// At the beginning of the game, clear the on-screen scores.
//===================================================================

procedure clearscores;

begin

  frmMain.labWestHandPoints.caption  := '';
  frmMain.labNorthHandPoints.caption := '';
  frmMain.labEastHandPoints.caption  := '';
  frmMain.labSouthHandPoints.caption := '';

  frmMain.labWestGamePoints.caption  := '';
  frmMain.labNorthGamePoints.caption := '';
  frmMain.labEastGamePoints.caption  := '';
  frmMain.labSouthGamePoints.caption := '';

end;

//===================================================================
// At the beginning of a new hand (except the first), save the scores
// that were in effect at the *start* of the just completed hand.
// (That is, the scores that ended the hand *before* the just
// completed hand.) Those values are in the current elements, which
// are about to be reset.
//===================================================================

procedure savepreviousscores;

var
  p                       : player;

begin
   for p in player do begin
     saveprevioushandpointstext[p] := savecurrenthandpointstext[p];
     savepreviousgamepointstext[p] := savecurrentgamepointstext[p];
   end;

end;

//===================================================================
// At the beginning of a new hand, save the scores that are in
// effect now.(That is, the scores that ended the just completed
// hand.) Those values are in the on-screen fields.
//===================================================================

procedure savecurrentscores;

begin

  savecurrenthandpointstext[west]  := frmMain.labWestHandPoints.caption;
  savecurrenthandpointstext[north] := frmMain.labNorthHandPoints.caption;
  savecurrenthandpointstext[east]  := frmMain.labEastHandPoints.caption;
  savecurrenthandpointstext[south] := frmMain.labSouthHandPoints.caption;

  savecurrentgamepointstext[west]  := frmMain.labWestGamePoints.caption;
  savecurrentgamepointstext[north] := frmMain.labNorthGamePoints.caption;
  savecurrentgamepointstext[east]  := frmMain.labEastGamePoints.caption;
  savecurrentgamepointstext[south] := frmMain.labSouthGamePoints.caption;

end;

//===================================================================
// Starting to replay the *current* hand. Restore on-screen scores from
// values saved at start of current hand.
//===================================================================

procedure restorescoresfromcurrent;

begin

  frmMain.labWestHandPoints.caption  := savecurrenthandpointstext[west];
  frmMain.labNorthHandPoints.caption := savecurrenthandpointstext[north];
  frmMain.labEastHandPoints.caption  := savecurrenthandpointstext[east];
  frmMain.labSouthHandPoints.caption := savecurrenthandpointstext[south];

  frmMain.labWestGamePoints.caption  := savecurrentgamepointstext[west];
  frmMain.labNorthGamePoints.caption := savecurrentgamepointstext[north];
  frmMain.labEastGamePoints.caption  := savecurrentgamepointstext[east];
  frmMain.labSouthGamePoints.caption := savecurrentgamepointstext[south];

end;

//===================================================================
// Starting to replay the previous hand. Restore on-screen scores
// from values saved at start of previous hand.
//===================================================================

procedure restorescoresfromprevious;

begin

  frmMain.labWestHandPoints.caption  := saveprevioushandpointstext[west];
  frmMain.labNorthHandPoints.caption := saveprevioushandpointstext[north];
  frmMain.labEastHandPoints.caption  := saveprevioushandpointstext[east];
  frmMain.labSouthHandPoints.caption := saveprevioushandpointstext[south];

  frmMain.labWestGamePoints.caption  := savepreviousgamepointstext[west];
  frmMain.labNorthGamePoints.caption := savepreviousgamepointstext[north];
  frmMain.labEastGamePoints.caption  := savepreviousgamepointstext[east];
  frmMain.labSouthGamePoints.caption := savepreviousgamepointstext[south];

end;

//===================================================================
// Starting to replay the previous hand. The scores that started it
// become the scores starting the current hand.
//===================================================================

procedure resetcurrenttoprevious;

var
  p                       : player;

begin

  for p in player do begin
    savecurrenthandpointstext[p]  := saveprevioushandpointstext[p];
    savecurrentgamepointstext[p]  := savepreviousgamepointstext[p];
  end;
end;


//###################################################################
// UTILITY PROCEDURES AND FUNCTIONS
//
// These are general purpose routines that have nothing to do
// with the gameplay.
//###################################################################


//===================================================================
// Count number of cards in set.
// Wish there was a built-in function for getting number of members
// in a set.
//===================================================================

function countcards (xcards : cardset) : smallint;
var
  c                       : card;
  i                       : smallint = 0;
begin
  for c in xcards do begin
      i := i + 1;
  end;
  result := i;
end;

//===================================================================
// Turn a set of cards into printable text.
//===================================================================

function cards_to_cardnames (xcards : cardset) : shortstring;
var
  c                       : card;
  firsttime               : boolean = True;
  s                       : shortstring;
begin
  for c in xcards do begin
    if firsttime then begin
      s := cardnames[c];
      firsttime := False;
    end
    else begin
      s := s + ' ' + cardnames[c];
    end;
  end;
  result := s;
end;

//===================================================================
// Given a card name as text, return the card.
//
// Note: this function is not currently invoked anywhere.
//===================================================================

function cardname_to_card (s : shortstring) : card;
var
  c                       : card;

begin
  for c in card do begin
    if s = cardnames[c] then begin
      result := c;
      exit;
    end;
  end;
  showmessage ('Could not find card: ' + s);
  halt;
end;

//===================================================================
// Find the position of the card in the set
//===================================================================

function card_to_cardpos (x : card; xcards : cardset) : smallint;

var
  c                       : card;
  found                   : boolean = false;
  i                       : smallint = 0;

begin

  for c in xcards do begin
      i := i + 1;
      if c = x then begin
        found := true;
        break;
      end;
  end;

  if found = false then begin
    showmessage ('Could not find position of given card in hand');
    halt;
  end;

  result := i;

end;

//===================================================================
// Give me the nth card in a set.
//===================================================================

function cardpos_to_card (n : smallint; xcards : cardset) : card;

var
  c                       : card;
  found                   : boolean = false;
  foundcard               : card;
  i                       : smallint = 0;

begin
  for c in xcards do begin
      i := i + 1;
      if i = n then begin
        found := true;
        foundcard := c;
        break;
      end;
  end;

  if found = false then begin
    showmessage ('Could not find card at given position in hand');
    halt;
  end;

  result := foundcard;

end;

//===================================================================
// Find what card is associated with this image number
//
// First we calculate what the position of this image is for the set.
// Then get the card at that position in the set.
// Remember, from the remove a card procedure, that the images are
// arranged with gaps on left and right, with one more on the right
// if there are an even number in the set.
//
//   - - a b c d e f g h - - -
// So in the above case, if we click the 6th image, we want the 4th
// card in the set.
//===================================================================

function image_to_card (imagenum : smallint; p : player) : card;

var
  c                       : card;
  found                   : boolean = false;
  foundcard               : card;
  i                       : smallint = 0;
  n                       : smallint;
  pstart                  : smallint;
  setlocation             : smallint;

begin
  n := countcards (handcards[p]);
  pstart := ((13 - n) div 2) + 1;
  setlocation := imagenum - (pstart - 1);

  for c in handcards[p] do begin
    i := i +1;
    if i = setlocation then begin
      found :=  true;
      foundcard := c;
      break;
    end;
  end;

  if found = false then begin
    showmessage ('Could not find card for image number: ' + inttostr(imagenum));
    halt;
  end;

  result := foundcard;

end;

//===================================================================
// Find what image number is associated with this card
//
// First we find the position of the card in the set.
// Then we calculate the number of the image where the set starts.
// Add the two (subtracting one of course) to get the image number
// where this card is.
//===================================================================

function card_to_image (x: card; xcards: cardset) : smallint;

var
  n                       : smallint;
  pstart                  : smallint;
  setlocation             : smallint;

begin

  setlocation := card_to_cardpos (x, xcards);

  n := countcards (xcards);
  pstart := ((13 - n) div 2) + 1;
  result := setlocation + (pstart -1);

end;

//===================================================================
// Get suit for this card.
//===================================================================

function cardsuit (x: card) : suit;

begin
  if x in clubs then result := club
  else if x in diamonds then result := diamond
       else if x in spades then result := spade
            else if x in hearts then result := heart
                 else begin showmessage ('Cannot find suit for card'); halt; end;

end;

//===================================================================
// Get the rank of the card.
//
// Usually for comparison purposes with other cards to see which is
// greater or less.
// The rank is just the card's position in its suit.
// i.e. 2 has rank 1, 3 has rank 2, etc. up to 13 for the ace.
//===================================================================

function cardrank (x : card) : smallint;

begin

  if x in clubs then begin
    cardrank := card_to_cardpos (x, clubs);
  end
  else begin
    if x in diamonds then begin
      cardrank := card_to_cardpos (x, diamonds);
    end
    else begin
      if x in spades then begin
        cardrank := card_to_cardpos (x, spades);
      end
      else begin
        if x in hearts then begin
          cardrank := card_to_cardpos (x, hearts);
        end
        else begin
          showmessage ('could not find rank of card');
          halt;
        end;
      end;
    end;
  end;

end;

//===================================================================
// Pick a random card from some set of cards.
//===================================================================

function pickarandomcard (xcards : cardset) : card;

begin
  result := cardpos_to_card (random(countcards(xcards))+1, xcards);
end;

//===================================================================
// Find the highest card of the given suit in a set of cards.
//
// Should never happen that we don't find the highest card because we
// only call this when there are cards of that suit in the set.
//===================================================================

function highestofsuit (xcards:cardset; suitset:cardset) : card;

var
  cardsofthissuit         : cardset;
  n                       : smallint;

begin

  cardsofthissuit := xcards * suitset;
  if cardsofthissuit = [] then begin
    showmessage ('Could not find card of required suit.');
    halt;
  end;

  n := countcards (cardsofthissuit);
  result := cardpos_to_card (n, cardsofthissuit);

end;

//===================================================================
// Find the highest card of any suit in a set of cards.
//
// We examine the cards of each suit in the hand (or cardset).
// Find its highest. If it's higher than what we've found in previous
// suits, it becomes the new highest.
//
// We could probably loop this rather than examine each suit explicitly.
//
// Should never happen that we don't find the highest card because we
// only call this when there are at least some cards in the set.
//===================================================================

function highestofall (xcards:cardset) : card;

var
  c                       : card;
  highestcard             : card;
  m                       : smallint;
  n                       : smallint;
  xc                      : cardset;

begin

  m := 0; {lower than possible}

  xc := xcards * clubs;
  if not (xc = []) then begin
    c := highestofsuit (xc, clubs);
    n := cardrank (c);
    if n > m then begin
      m := n;
      highestcard := c;
    end;
  end;

  xc := xcards * diamonds;
  if not (xc = []) then begin
    c := highestofsuit (xc, diamonds);
    n := cardrank (c);
    if n > m then begin
      m := n;
      highestcard := c;
    end;
  end;

  xc := xcards * spades;
  if not (xc = []) then begin
    c := highestofsuit (xc, spades);
    n := cardrank (c);
    if n > m then begin
      m := n;
      highestcard := c;
    end;
  end;

  xc := xcards * hearts;
  if not (xc = []) then begin
    c := highestofsuit (xc, hearts);
    n := cardrank (c);
    if n > m then begin
      m := n;
      highestcard := c;
    end;
  end;

  if m = 0 then begin
    showmessage ('could not find highest card in any suit');
    halt;
  end;

  result := highestcard;

end;

//===================================================================
// Find the lowest card of the given suit in a set of cards.
//
// Should never happen that we don't find the lowest card because we
// only call this when there are cards of that suit in the set.
//===================================================================

function lowestofsuit (xcards:cardset; suitset:cardset) : card;

var
  cardsofthissuit         : cardset;

begin

  cardsofthissuit := xcards * suitset;
  if cardsofthissuit = [] then begin
    showmessage ('Could not find card of required suit.');
    halt;
  end;

  result := cardpos_to_card (1, cardsofthissuit);

end;

//===================================================================
// Find the lowest card of any suit in a set of cards.
//===================================================================

function lowestofall (xcards:cardset) : card;

var
  c                       : card;
  lowestcard              : card;
  m                       : smallint;
  n                       : smallint;
  xc                      : cardset;

begin

  m := 14; {higher than possible}

  xc := xcards * clubs;
  if not (xc = []) then begin
    c := lowestofsuit (xc, clubs);
    n := cardrank (c);
    if n < m then begin
      m := n;
      lowestcard := c;
    end;
  end;

  xc := xcards * diamonds;
  if not (xc = []) then begin
    c := lowestofsuit (xc, diamonds);
    n := cardrank (c);
    if n < m then begin
      m := n;
      lowestcard := c;
    end;
  end;

  xc := xcards * spades;
  if not (xc = []) then begin
    c := lowestofsuit (xc, spades);
    n := cardrank (c);
    if n < m then begin
      m := n;
      lowestcard := c;
    end;
  end;

  xc := xcards * hearts;
  if not (xc = []) then begin
    c := lowestofsuit (xc, hearts);
    n := cardrank (c);
    if n < m then begin
      m := n;
      lowestcard := c;
    end;
  end;

  if m = 0 then begin
    showmessage ('could not find lowest card in any suit');
    halt;
  end;

  result := lowestcard;

end;

//===================================================================
// Find the best card to avoid taking the trick.
//
// The first choice is the highest card under the highest card
// played of the trick suit. The second choice is the lowest card
// over the highest card of the trick suit.
//
// For example, if two cards have been played in the trick so far:
// 9D, QS
// and the diamonds in this player's legal card set are:
// 3D 7D AD
// then I want to play the 7D - it's the highest diamond I have that
// will avoid taking the trick. If I had:
// JD AD
// then I would play JD, the lowest diamond I have, hoping the last
// player has QD or KD.
//
// But if three cards have been played in the tricked and I cannot
// go under, then take with my highest.
//===================================================================

function cardtoavoidtrick : card;

var
  mycard                  : card;
  myrank                  : smallint;
  targetcard              : card;
  targetrank              : smallint;
  undercard               : card;
  underrank               : smallint;

begin

    // Get the highest tricksuit card played so far.
    // And get its rank. This is the card we want to play under, or
    // just above if we can't play under.

  targetcard := cardpos_to_card (countcards(tricksetsuitcards), tricksetsuitcards);
  targetrank := cardrank (targetcard);

    // Now compare the rank of each card in my legal set to this card.

  myrank := 0;
  underrank := 0;
  for mycard in playlegal do begin
    myrank := cardrank (mycard);
    if myrank < targetrank then begin
      underrank := myrank;
      undercard := mycard;
    end;
  end;

    // We found at least one undercard.
    // The last one is the highest and still under. That's the one we want.

  if underrank <> 0 then begin
    result := undercard;
    exit;
  end;

    // We didn't find an undercard.
    // If this is not the last play of the trick, then play our lowest legal
    // card in hopes someone will play higher and take the trick.
    // But if we are playing last, no use, so play our highest legal card.

  if playnumber < 4 then begin
    result := lowestofall (playlegal);
    end
  else begin
    result := highestofall (playlegal);
  end;

end;


//===================================================================
// End of progam
//===================================================================

{ Hearts.

  The flow of control is a combination of the user clicking and the program
  taking the necessary steps. So it is not a bunch of nested loops like:
         Game
             Hands
                  Tricks

  Instead it's a collection of fits and starts. The user input is made for:
          Start game
          Select cards to pass
          Pass
          Select card to play

  There can be user input for "OK, I've seen the end of this trick", and
  "OK, I've seen the cards passed to me." But there is also a timed delay
  if the user does not want to click.

  So the user-click routines start things, they will go as far as they
  can calling various procedures and functions until user input is required
  once more. This is why we have game start/finish, hand start/finish and
  trick start/finish routines.

  For the rules of Hearts used in this version, see the "About" form.

  Geoff Gigg (geoffgigg@hotmail.com)
  July, 2020
  GPL v2 (https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html)

}

end.
