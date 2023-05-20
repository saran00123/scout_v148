.class public Lorg/commonmark/internal/util/Parsing;
.super Ljava/lang/Object;
.source "Parsing.java"


# static fields
.field private static final ATTRIBUTE:Ljava/lang/String; = "(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"\'=<>`\\x00-\\x20]+|\'[^\']*\'|\"[^\"]*\"))?)"

.field private static final ATTRIBUTENAME:Ljava/lang/String; = "[a-zA-Z_:][a-zA-Z0-9:._-]*"

.field private static final ATTRIBUTEVALUE:Ljava/lang/String; = "(?:[^\"\'=<>`\\x00-\\x20]+|\'[^\']*\'|\"[^\"]*\")"

.field private static final ATTRIBUTEVALUESPEC:Ljava/lang/String; = "(?:\\s*=\\s*(?:[^\"\'=<>`\\x00-\\x20]+|\'[^\']*\'|\"[^\"]*\"))"

.field public static final CLOSETAG:Ljava/lang/String; = "</[A-Za-z][A-Za-z0-9-]*\\s*[>]"

.field public static CODE_BLOCK_INDENT:I = 0x4

.field private static final DOUBLEQUOTEDVALUE:Ljava/lang/String; = "\"[^\"]*\""

.field public static final OPENTAG:Ljava/lang/String; = "<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"\'=<>`\\x00-\\x20]+|\'[^\']*\'|\"[^\"]*\"))?)*\\s*/?>"

.field private static final SINGLEQUOTEDVALUE:Ljava/lang/String; = "\'[^\']*\'"

.field private static final TAGNAME:Ljava/lang/String; = "[A-Za-z][A-Za-z0-9-]*"

.field private static final UNQUOTEDVALUE:Ljava/lang/String; = "[^\"\'=<>`\\x00-\\x20]+"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static columnsToNextTabStop(I)I
    .registers 1

    .line 24
    rem-int/lit8 p0, p0, 0x4

    rsub-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static find(CLjava/lang/CharSequence;I)I
    .registers 5

    .line 28
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_4
    if-ge p2, v0, :cond_10

    .line 30
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, p0, :cond_d

    return p2

    :cond_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_10
    const/4 p0, -0x1

    return p0
.end method

.method public static findLineBreak(Ljava/lang/CharSequence;I)I
    .registers 5

    .line 38
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_4
    if-ge p1, v0, :cond_16

    .line 40
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_15

    const/16 v2, 0xd

    if-eq v1, v2, :cond_15

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_15
    return p1

    :cond_16
    const/4 p0, -0x1

    return p0
.end method

.method private static findNonSpace(Ljava/lang/CharSequence;I)I
    .registers 5

    .line 192
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_4
    if-ge p1, v0, :cond_15

    .line 194
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_12

    packed-switch v1, :pswitch_data_18

    return p1

    :cond_12
    :pswitch_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_15
    const/4 p0, -0x1

    return p0

    nop

    :pswitch_data_18
    .packed-switch 0x9
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public static hasNonSpace(Ljava/lang/CharSequence;)Z
    .registers 4

    .line 54
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x20

    .line 55
    invoke-static {v2, p0, v1, v0}, Lorg/commonmark/internal/util/Parsing;->skip(CLjava/lang/CharSequence;II)I

    move-result p0

    if-eq p0, v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .registers 3

    const/4 v0, 0x0

    .line 50
    invoke-static {p0, v0}, Lorg/commonmark/internal/util/Parsing;->findNonSpace(Ljava/lang/CharSequence;I)I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public static isEscapable(Ljava/lang/CharSequence;I)Z
    .registers 3

    .line 76
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_19

    .line 77
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    packed-switch p0, :pswitch_data_1c

    packed-switch p0, :pswitch_data_3e

    packed-switch p0, :pswitch_data_50

    packed-switch p0, :pswitch_data_60

    goto :goto_19

    :pswitch_17
    const/4 p0, 0x1

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_1c
    .packed-switch 0x21
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_3e
    .packed-switch 0x3a
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_50
    .packed-switch 0x5b
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x7b
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method public static isLetter(Ljava/lang/CharSequence;I)Z
    .registers 2

    .line 60
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p0

    .line 61
    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result p0

    return p0
.end method

.method public static isSpaceOrTab(Ljava/lang/CharSequence;I)Z
    .registers 3

    .line 65
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 66
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p1, 0x9

    if-eq p0, p1, :cond_13

    const/16 p1, 0x20

    if-eq p0, p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x1

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x0

    return p0
.end method

.method public static prepareLine(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 6

    .line 122
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_29

    .line 124
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eqz v4, :cond_16

    if-eqz v3, :cond_26

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_16
    if-nez v3, :cond_20

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 129
    invoke-virtual {v3, p0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_20
    const v4, 0xfffd

    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_29
    if-eqz v3, :cond_2f

    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2f
    return-object p0
.end method

.method public static skip(CLjava/lang/CharSequence;II)I
    .registers 5

    :goto_0
    if-ge p2, p3, :cond_c

    .line 149
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, p0, :cond_9

    return p2

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_c
    return p3
.end method

.method public static skipBackwards(CLjava/lang/CharSequence;II)I
    .registers 5

    :goto_0
    if-lt p2, p3, :cond_c

    .line 158
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, p0, :cond_9

    return p2

    :cond_9
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_c
    add-int/lit8 p3, p3, -0x1

    return p3
.end method

.method public static skipSpaceTab(Ljava/lang/CharSequence;II)I
    .registers 5

    :goto_0
    if-ge p1, p2, :cond_12

    .line 167
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_f

    const/16 v1, 0x20

    if-eq v0, v1, :cond_f

    return p1

    :cond_f
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_12
    return p2
.end method

.method public static skipSpaceTabBackwards(Ljava/lang/CharSequence;II)I
    .registers 5

    :goto_0
    if-lt p1, p2, :cond_12

    .line 180
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_f

    const/16 v1, 0x20

    if-eq v0, v1, :cond_f

    return p1

    :cond_f
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_12
    add-int/lit8 p2, p2, -0x1

    return p2
.end method
