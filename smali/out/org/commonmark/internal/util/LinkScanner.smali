.class public Lorg/commonmark/internal/util/LinkScanner;
.super Ljava/lang/Object;
.source "LinkScanner.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scanLinkDestination(Ljava/lang/CharSequence;I)I
    .registers 6

    .line 34
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, -0x1

    if-lt p1, v0, :cond_8

    return v1

    .line 38
    :cond_8
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_39

    :cond_10
    :goto_10
    add-int/lit8 p1, p1, 0x1

    .line 39
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_38

    .line 40
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_38

    if-eq v0, v2, :cond_38

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_35

    const/16 v3, 0x5c

    if-eq v0, v3, :cond_2b

    goto :goto_10

    :cond_2b
    add-int/lit8 v0, p1, 0x1

    .line 43
    invoke-static {p0, v0}, Lorg/commonmark/internal/util/Parsing;->isEscapable(Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_10

    move p1, v0

    goto :goto_10

    :cond_35
    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_38
    return v1

    .line 56
    :cond_39
    invoke-static {p0, p1}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkDestinationWithBalancedParens(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method private static scanLinkDestinationWithBalancedParens(Ljava/lang/CharSequence;I)I
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    move v0, p1

    .line 113
    :goto_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_47

    .line 114
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_42

    const/16 v4, 0x20

    if-eq v2, v4, :cond_42

    const/16 v5, 0x5c

    if-eq v2, v5, :cond_36

    const/16 v5, 0x28

    if-eq v2, v5, :cond_31

    const/16 v4, 0x29

    if-eq v2, v4, :cond_2b

    .line 140
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_3f

    if-eq v0, p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v3

    :goto_2a
    return v0

    :cond_2b
    if-nez v1, :cond_2e

    return v0

    :cond_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_3f

    :cond_31
    add-int/lit8 v1, v1, 0x1

    if-le v1, v4, :cond_3f

    return v3

    :cond_36
    add-int/lit8 v2, v0, 0x1

    .line 120
    invoke-static {p0, v2}, Lorg/commonmark/internal/util/Parsing;->isEscapable(Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_3f

    move v0, v2

    :cond_3f
    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_42
    if-eq v0, p1, :cond_45

    goto :goto_46

    :cond_45
    move v0, v3

    :goto_46
    return v0

    .line 146
    :cond_47
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0
.end method

.method public static scanLinkLabelContent(Ljava/lang/CharSequence;I)I
    .registers 4

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_1e

    .line 12
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_24

    goto :goto_1b

    :pswitch_e
    return p1

    :pswitch_f
    add-int/lit8 v0, p1, 0x1

    .line 15
    invoke-static {p0, v0}, Lorg/commonmark/internal/util/Parsing;->isEscapable(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-eqz v1, :cond_1b

    move p1, v0

    goto :goto_1b

    :pswitch_19
    const/4 p0, -0x1

    return p0

    :cond_1b
    :goto_1b
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 27
    :cond_1e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0

    nop

    :pswitch_data_24
    .packed-switch 0x5b
        :pswitch_19
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public static scanLinkTitle(Ljava/lang/CharSequence;I)I
    .registers 6

    .line 61
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, -0x1

    if-lt p1, v0, :cond_8

    return v1

    .line 66
    :cond_8
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x27

    const/16 v3, 0x22

    if-eq v0, v3, :cond_1c

    if-eq v0, v2, :cond_1d

    const/16 v2, 0x28

    if-eq v0, v2, :cond_19

    return v1

    :cond_19
    const/16 v2, 0x29

    goto :goto_1d

    :cond_1c
    move v2, v3

    :cond_1d
    :goto_1d
    add-int/lit8 p1, p1, 0x1

    .line 80
    invoke-static {p0, p1, v2}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkTitleContent(Ljava/lang/CharSequence;IC)I

    move-result p1

    if-ne p1, v1, :cond_26

    return v1

    .line 85
    :cond_26
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_36

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    if-eq p0, v2, :cond_33

    goto :goto_36

    :cond_33
    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_36
    :goto_36
    return v1
.end method

.method public static scanLinkTitleContent(Ljava/lang/CharSequence;IC)I
    .registers 6

    .line 94
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_28

    .line 95
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_18

    add-int/lit8 v1, p1, 0x1

    .line 96
    invoke-static {p0, v1}, Lorg/commonmark/internal/util/Parsing;->isEscapable(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_18

    move p1, v1

    goto :goto_25

    :cond_18
    if-ne v0, p2, :cond_1b

    return p1

    :cond_1b
    const/16 v1, 0x29

    if-ne p2, v1, :cond_25

    const/16 v1, 0x28

    if-ne v0, v1, :cond_25

    const/4 p0, -0x1

    return p0

    :cond_25
    :goto_25
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 105
    :cond_28
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0
.end method
