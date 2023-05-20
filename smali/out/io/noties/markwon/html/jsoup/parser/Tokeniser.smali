.class public final Lio/noties/markwon/html/jsoup/parser/Tokeniser;
.super Ljava/lang/Object;
.source "Tokeniser.java"


# static fields
.field private static final notCharRefCharsSorted:[C

.field static final replacementChar:C = '\ufffd'

.field static final win1252Extensions:[I

.field static final win1252ExtensionsStart:I = 0x80


# instance fields
.field charPending:Lio/noties/markwon/html/jsoup/parser/Token$Character;

.field private charsBuilder:Ljava/lang/StringBuilder;

.field private charsString:Ljava/lang/String;

.field private final codepointHolder:[I

.field commentPending:Lio/noties/markwon/html/jsoup/parser/Token$Comment;

.field dataBuffer:Ljava/lang/StringBuilder;

.field doctypePending:Lio/noties/markwon/html/jsoup/parser/Token$Doctype;

.field private emitPending:Lio/noties/markwon/html/jsoup/parser/Token;

.field endPending:Lio/noties/markwon/html/jsoup/parser/Token$EndTag;

.field private final errors:Lio/noties/markwon/html/jsoup/parser/ParseErrorList;

.field private isEmitPending:Z

.field private lastStartTag:Ljava/lang/String;

.field private final multipointHolder:[I

.field private final reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

.field startPending:Lio/noties/markwon/html/jsoup/parser/Token$StartTag;

.field private state:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

.field tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x7

    .line 13
    new-array v0, v0, [C

    fill-array-data v0, :array_18

    sput-object v0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->notCharRefCharsSorted:[C

    const/16 v0, 0x20

    .line 18
    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->win1252Extensions:[I

    .line 28
    sget-object v0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->notCharRefCharsSorted:[C

    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    return-void

    nop

    :array_18
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x3cs
        0x26s
    .end array-data

    nop

    :array_24
    .array-data 4
        0x20ac
        0x81
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0x8d
        0x17d
        0x8f
        0x90
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0x9d
        0x17e
        0x178
    .end array-data
.end method

.method public constructor <init>(Lio/noties/markwon/html/jsoup/parser/CharacterReader;Lio/noties/markwon/html/jsoup/parser/ParseErrorList;)V
    .registers 5

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lio/noties/markwon/html/jsoup/parser/TokeniserState;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->state:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->isEmitPending:Z

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    .line 42
    new-instance v0, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;

    invoke-direct {v0}, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;-><init>()V

    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->startPending:Lio/noties/markwon/html/jsoup/parser/Token$StartTag;

    .line 43
    new-instance v0, Lio/noties/markwon/html/jsoup/parser/Token$EndTag;

    invoke-direct {v0}, Lio/noties/markwon/html/jsoup/parser/Token$EndTag;-><init>()V

    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->endPending:Lio/noties/markwon/html/jsoup/parser/Token$EndTag;

    .line 44
    new-instance v0, Lio/noties/markwon/html/jsoup/parser/Token$Character;

    invoke-direct {v0}, Lio/noties/markwon/html/jsoup/parser/Token$Character;-><init>()V

    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->charPending:Lio/noties/markwon/html/jsoup/parser/Token$Character;

    .line 45
    new-instance v0, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;

    invoke-direct {v0}, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;-><init>()V

    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->doctypePending:Lio/noties/markwon/html/jsoup/parser/Token$Doctype;

    .line 46
    new-instance v0, Lio/noties/markwon/html/jsoup/parser/Token$Comment;

    invoke-direct {v0}, Lio/noties/markwon/html/jsoup/parser/Token$Comment;-><init>()V

    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->commentPending:Lio/noties/markwon/html/jsoup/parser/Token$Comment;

    const/4 v0, 0x1

    .line 129
    new-array v0, v0, [I

    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->codepointHolder:[I

    const/4 v0, 0x2

    .line 130
    new-array v0, v0, [I

    iput-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->multipointHolder:[I

    .line 50
    iput-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    .line 51
    iput-object p2, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->errors:Lio/noties/markwon/html/jsoup/parser/ParseErrorList;

    return-void
.end method

.method private characterReferenceError(Ljava/lang/String;)V
    .registers 7

    .line 255
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->errors:Lio/noties/markwon/html/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lio/noties/markwon/html/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 256
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->errors:Lio/noties/markwon/html/jsoup/parser/ParseErrorList;

    new-instance v1, Lio/noties/markwon/html/jsoup/parser/ParseError;

    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->pos()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "Invalid character reference: %s"

    invoke-direct {v1, v2, p1, v3}, Lio/noties/markwon/html/jsoup/parser/ParseError;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lio/noties/markwon/html/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    :cond_20
    return-void
.end method


# virtual methods
.method advanceTransition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V
    .registers 3

    .line 125
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->advance()V

    .line 126
    iput-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->state:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    return-void
.end method

.method appropriateEndTagName()Ljava/lang/String;
    .registers 2

    .line 241
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    return-object v0
.end method

.method consumeCharacterReference(Ljava/lang/Character;Z)[I
    .registers 11

    .line 132
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    if-eqz p1, :cond_19

    .line 134
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->current()C

    move-result v0

    if-ne p1, v0, :cond_19

    return-object v1

    .line 136
    :cond_19
    iget-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    sget-object v0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->notCharRefCharsSorted:[C

    invoke-virtual {p1, v0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->matchesAnySorted([C)Z

    move-result p1

    if-eqz p1, :cond_24

    return-object v1

    .line 139
    :cond_24
    iget-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->codepointHolder:[I

    .line 140
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->mark()V

    .line 141
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "missing semicolon"

    const-string v3, ";"

    const/4 v4, 0x0

    if-eqz v0, :cond_b4

    .line 142
    iget-object p2, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    const-string v0, "X"

    invoke-virtual {p2, v0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->matchConsumeIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 143
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consumeHexSequence()Ljava/lang/String;

    move-result-object v0

    goto :goto_51

    :cond_4b
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consumeDigitSequence()Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_51
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_62

    const-string p1, "numeric reference with no numerals"

    .line 145
    invoke-direct {p0, p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->rewindToMark()V

    return-object v1

    .line 149
    :cond_62
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    invoke-virtual {v1, v3}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 150
    invoke-direct {p0, v2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;)V

    :cond_6d
    if-eqz p2, :cond_72

    const/16 p2, 0x10

    goto :goto_74

    :cond_72
    const/16 p2, 0xa

    :goto_74
    const/4 v1, -0x1

    .line 154
    :try_start_75
    invoke-static {v0, p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_7d
    .catch Ljava/lang/NumberFormatException; {:try_start_75 .. :try_end_7d} :catch_7e

    goto :goto_7f

    :catch_7e
    move p2, v1

    :goto_7f
    if-eq p2, v1, :cond_a9

    const v0, 0xd800

    if-lt p2, v0, :cond_8b

    const v0, 0xdfff

    if-le p2, v0, :cond_a9

    :cond_8b
    const v0, 0x10ffff

    if-le p2, v0, :cond_91

    goto :goto_a9

    :cond_91
    const/16 v0, 0x80

    if-lt p2, v0, :cond_a6

    .line 163
    sget-object v1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->win1252Extensions:[I

    array-length v1, v1

    add-int/2addr v1, v0

    if-ge p2, v1, :cond_a6

    const-string v0, "character is not a valid unicode code point"

    .line 164
    invoke-direct {p0, v0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;)V

    .line 165
    sget-object v0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->win1252Extensions:[I

    add-int/lit8 p2, p2, -0x80

    aget p2, v0, p2

    .line 170
    :cond_a6
    aput p2, p1, v4

    return-object p1

    :cond_a9
    :goto_a9
    const-string p2, "character outside of valid range"

    .line 158
    invoke-direct {p0, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;)V

    const p2, 0xfffd

    .line 159
    aput p2, p1, v4

    return-object p1

    .line 175
    :cond_b4
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consumeLetterThenDigitSequence()Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v5, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->matches(C)Z

    move-result v5

    .line 178
    invoke-static {v0}, Lio/noties/markwon/html/jsoup/nodes/CommonMarkEntities;->isNamedEntity(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_cd

    if-eqz v5, :cond_cd

    move v6, v7

    goto :goto_ce

    :cond_cd
    move v6, v4

    :goto_ce
    if-nez v6, :cond_e5

    .line 181
    iget-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->rewindToMark()V

    if-eqz v5, :cond_e4

    .line 183
    new-array p1, v7, [Ljava/lang/Object;

    aput-object v0, p1, v4

    const-string p2, "invalid named referenece \'%s\'"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;)V

    :cond_e4
    return-object v1

    :cond_e5
    if-eqz p2, :cond_10b

    .line 186
    iget-object p2, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->matchesLetter()Z

    move-result p2

    if-nez p2, :cond_105

    iget-object p2, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->matchesDigit()Z

    move-result p2

    if-nez p2, :cond_105

    iget-object p2, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    const/4 v5, 0x3

    new-array v5, v5, [C

    fill-array-data v5, :array_142

    invoke-virtual {p2, v5}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->matchesAny([C)Z

    move-result p2

    if-eqz p2, :cond_10b

    .line 188
    :cond_105
    iget-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->rewindToMark()V

    return-object v1

    .line 191
    :cond_10b
    iget-object p2, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    invoke-virtual {p2, v3}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_116

    .line 192
    invoke-direct {p0, v2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;)V

    .line 193
    :cond_116
    iget-object p2, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->multipointHolder:[I

    invoke-static {v0, p2}, Lio/noties/markwon/html/jsoup/nodes/CommonMarkEntities;->codepointsForName(Ljava/lang/String;[I)I

    move-result p2

    if-ne p2, v7, :cond_125

    .line 195
    iget-object p2, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->multipointHolder:[I

    aget p2, p2, v4

    aput p2, p1, v4

    return-object p1

    :cond_125
    const/4 p1, 0x2

    if-ne p2, p1, :cond_12b

    .line 198
    iget-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->multipointHolder:[I

    return-object p1

    .line 200
    :cond_12b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected characters returned for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/noties/markwon/html/jsoup/helper/Validate;->fail(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->multipointHolder:[I

    return-object p1

    :array_142
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method createCommentPending()V
    .registers 2

    .line 217
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->commentPending:Lio/noties/markwon/html/jsoup/parser/Token$Comment;

    invoke-virtual {v0}, Lio/noties/markwon/html/jsoup/parser/Token$Comment;->reset()Lio/noties/markwon/html/jsoup/parser/Token;

    return-void
.end method

.method createDoctypePending()V
    .registers 2

    .line 225
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->doctypePending:Lio/noties/markwon/html/jsoup/parser/Token$Doctype;

    invoke-virtual {v0}, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->reset()Lio/noties/markwon/html/jsoup/parser/Token;

    return-void
.end method

.method createTagPending(Z)Lio/noties/markwon/html/jsoup/parser/Token$Tag;
    .registers 2

    if-eqz p1, :cond_9

    .line 207
    iget-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->startPending:Lio/noties/markwon/html/jsoup/parser/Token$StartTag;

    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;->reset()Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    move-result-object p1

    goto :goto_f

    :cond_9
    iget-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->endPending:Lio/noties/markwon/html/jsoup/parser/Token$EndTag;

    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Token$EndTag;->reset()Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    move-result-object p1

    :goto_f
    iput-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    .line 208
    iget-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    return-object p1
.end method

.method createTempBuffer()V
    .registers 2

    .line 233
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lio/noties/markwon/html/jsoup/parser/Token;->reset(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method currentNodeInHtmlNS()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method emit(C)V
    .registers 2

    .line 113
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    return-void
.end method

.method emit(Lio/noties/markwon/html/jsoup/parser/Token;)V
    .registers 4

    .line 75
    iget-boolean v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->isEmitPending:Z

    const-string v1, "There is an unread token pending!"

    invoke-static {v0, v1}, Lio/noties/markwon/html/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 77
    iput-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emitPending:Lio/noties/markwon/html/jsoup/parser/Token;

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->isEmitPending:Z

    .line 80
    iget-object v0, p1, Lio/noties/markwon/html/jsoup/parser/Token;->type:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    sget-object v1, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->StartTag:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_19

    .line 81
    check-cast p1, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;

    .line 82
    iget-object p1, p1, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;->tagName:Ljava/lang/String;

    iput-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    goto :goto_2a

    .line 83
    :cond_19
    iget-object v0, p1, Lio/noties/markwon/html/jsoup/parser/Token;->type:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    sget-object v1, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->EndTag:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_2a

    .line 84
    check-cast p1, Lio/noties/markwon/html/jsoup/parser/Token$EndTag;

    .line 85
    iget-object p1, p1, Lio/noties/markwon/html/jsoup/parser/Token$EndTag;->attributes:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    if-eqz p1, :cond_2a

    const-string p1, "Attributes incorrectly present on end tag"

    .line 86
    invoke-virtual {p0, p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method emit(Ljava/lang/String;)V
    .registers 4

    .line 93
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 94
    iput-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    goto :goto_1b

    .line 97
    :cond_7
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_16

    .line 98
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_16
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1b
    return-void
.end method

.method emit([C)V
    .registers 2

    .line 105
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    return-void
.end method

.method emit([I)V
    .registers 5

    .line 109
    new-instance v0, Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {p0, v0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    return-void
.end method

.method emitCommentPending()V
    .registers 2

    .line 221
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->commentPending:Lio/noties/markwon/html/jsoup/parser/Token$Comment;

    invoke-virtual {p0, v0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(Lio/noties/markwon/html/jsoup/parser/Token;)V

    return-void
.end method

.method emitDoctypePending()V
    .registers 2

    .line 229
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->doctypePending:Lio/noties/markwon/html/jsoup/parser/Token$Doctype;

    invoke-virtual {p0, v0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(Lio/noties/markwon/html/jsoup/parser/Token;)V

    return-void
.end method

.method emitTagPending()V
    .registers 2

    .line 212
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {v0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->finaliseTag()V

    .line 213
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {p0, v0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(Lio/noties/markwon/html/jsoup/parser/Token;)V

    return-void
.end method

.method eofError(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V
    .registers 7

    .line 250
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->errors:Lio/noties/markwon/html/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lio/noties/markwon/html/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 251
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->errors:Lio/noties/markwon/html/jsoup/parser/ParseErrorList;

    new-instance v1, Lio/noties/markwon/html/jsoup/parser/ParseError;

    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->pos()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "Unexpectedly reached end of file (EOF) in input state [%s]"

    invoke-direct {v1, v2, p1, v3}, Lio/noties/markwon/html/jsoup/parser/ParseError;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lio/noties/markwon/html/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    :cond_20
    return-void
.end method

.method error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V
    .registers 8

    .line 245
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->errors:Lio/noties/markwon/html/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lio/noties/markwon/html/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 246
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->errors:Lio/noties/markwon/html/jsoup/parser/ParseErrorList;

    new-instance v1, Lio/noties/markwon/html/jsoup/parser/ParseError;

    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->pos()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    invoke-virtual {v5}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->current()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string p1, "Unexpected character \'%s\' in input state [%s]"

    invoke-direct {v1, v2, p1, v3}, Lio/noties/markwon/html/jsoup/parser/ParseError;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lio/noties/markwon/html/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    :cond_2d
    return-void
.end method

.method error(Ljava/lang/String;)V
    .registers 5

    .line 260
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->errors:Lio/noties/markwon/html/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lio/noties/markwon/html/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 261
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->errors:Lio/noties/markwon/html/jsoup/parser/ParseErrorList;

    new-instance v1, Lio/noties/markwon/html/jsoup/parser/ParseError;

    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->pos()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lio/noties/markwon/html/jsoup/parser/ParseError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/noties/markwon/html/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method getState()Lio/noties/markwon/html/jsoup/parser/TokeniserState;
    .registers 2

    .line 117
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->state:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    return-object v0
.end method

.method isAppropriateEndTagToken()Z
    .registers 3

    .line 237
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {v0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public read()Lio/noties/markwon/html/jsoup/parser/Token;
    .registers 6

    .line 55
    :goto_0
    iget-boolean v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->isEmitPending:Z

    if-nez v0, :cond_c

    .line 56
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->state:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    iget-object v1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->reader:Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    invoke-virtual {v0, p0, v1}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;->read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V

    goto :goto_0

    .line 59
    :cond_c
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_2e

    .line 60
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v3, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 62
    iput-object v1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->charPending:Lio/noties/markwon/html/jsoup/parser/Token$Character;

    invoke-virtual {v1, v0}, Lio/noties/markwon/html/jsoup/parser/Token$Character;->data(Ljava/lang/String;)Lio/noties/markwon/html/jsoup/parser/Token$Character;

    move-result-object v0

    return-object v0

    .line 64
    :cond_2e
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    if-eqz v0, :cond_3b

    .line 65
    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->charPending:Lio/noties/markwon/html/jsoup/parser/Token$Character;

    invoke-virtual {v2, v0}, Lio/noties/markwon/html/jsoup/parser/Token$Character;->data(Ljava/lang/String;)Lio/noties/markwon/html/jsoup/parser/Token$Character;

    move-result-object v0

    .line 66
    iput-object v1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    return-object v0

    .line 69
    :cond_3b
    iput-boolean v2, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->isEmitPending:Z

    .line 70
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emitPending:Lio/noties/markwon/html/jsoup/parser/Token;

    return-object v0
.end method

.method transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->state:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    return-void
.end method
