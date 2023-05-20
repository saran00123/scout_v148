.class public Lorg/commonmark/internal/LinkReferenceDefinitionParser;
.super Ljava/lang/Object;
.source "LinkReferenceDefinitionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;
    }
.end annotation


# instance fields
.field private final definitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/node/LinkReferenceDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private destination:Ljava/lang/String;

.field private label:Ljava/lang/StringBuilder;

.field private normalizedLabel:Ljava/lang/String;

.field private final paragraph:Ljava/lang/StringBuilder;

.field private referenceValid:Z

.field private state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

.field private title:Ljava/lang/StringBuilder;

.field private titleDelimiter:C


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->START_DEFINITION:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraph:Ljava/lang/StringBuilder;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->definitions:Ljava/util/List;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->referenceValid:Z

    return-void
.end method

.method private destination(Ljava/lang/CharSequence;I)I
    .registers 8

    .line 142
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 143
    invoke-static {p1, p2}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkDestination(Ljava/lang/CharSequence;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    return v1

    .line 148
    :cond_10
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    const/4 v4, 0x1

    if-ne v2, v3, :cond_25

    add-int/2addr p2, v4

    add-int/lit8 v2, v0, -0x1

    .line 149
    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2d

    .line 150
    :cond_25
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2d
    iput-object p2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->destination:Ljava/lang/String;

    .line 152
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {p1, v0, p2}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 153
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lt p2, p1, :cond_46

    .line 156
    iput-boolean v4, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->referenceValid:Z

    .line 157
    iget-object p1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraph:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_49

    :cond_46
    if-ne p2, v0, :cond_49

    return v1

    .line 163
    :cond_49
    :goto_49
    sget-object p1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->START_TITLE:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object p1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    return p2
.end method

.method private finishReference()V
    .registers 7

    .line 232
    iget-boolean v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->referenceValid:Z

    if-nez v0, :cond_5

    return-void

    .line 236
    :cond_5
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->destination:Ljava/lang/String;

    invoke-static {v0}, Lorg/commonmark/internal/util/Escaping;->unescapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/commonmark/internal/util/Escaping;->unescapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    :cond_19
    move-object v1, v2

    .line 238
    :goto_1a
    iget-object v3, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->definitions:Ljava/util/List;

    new-instance v4, Lorg/commonmark/node/LinkReferenceDefinition;

    iget-object v5, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->normalizedLabel:Ljava/lang/String;

    invoke-direct {v4, v5, v0, v1}, Lorg/commonmark/node/LinkReferenceDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    iput-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->referenceValid:Z

    .line 242
    iput-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->normalizedLabel:Ljava/lang/String;

    .line 243
    iput-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->destination:Ljava/lang/String;

    .line 244
    iput-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title:Ljava/lang/StringBuilder;

    return-void
.end method

.method private label(Ljava/lang/CharSequence;I)I
    .registers 6

    .line 104
    invoke-static {p1, p2}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkLabelContent(Ljava/lang/CharSequence;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return v1

    .line 109
    :cond_8
    iget-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 111
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lt v0, p2, :cond_1b

    .line 113
    iget-object p1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    .line 115
    :cond_1b
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    const/16 v2, 0x5d

    if-ne p2, v2, :cond_61

    add-int/lit8 v0, v0, 0x1

    .line 118
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge v0, p2, :cond_61

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    const/16 v2, 0x3a

    if-eq p2, v2, :cond_34

    goto :goto_61

    .line 123
    :cond_34
    iget-object p2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/16 v2, 0x3e7

    if-le p2, v2, :cond_3f

    return v1

    .line 127
    :cond_3f
    iget-object p2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/commonmark/internal/util/Escaping;->normalizeLabelContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 128
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_50

    return v1

    .line 132
    :cond_50
    iput-object p2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->normalizedLabel:Ljava/lang/String;

    .line 133
    sget-object p2, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->DESTINATION:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object p2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    add-int/lit8 v0, v0, 0x1

    .line 135
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {p1, v0, p2}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    move-result p1

    return p1

    :cond_61
    :goto_61
    return v1
.end method

.method private startDefinition(Ljava/lang/CharSequence;I)I
    .registers 5

    .line 87
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 88
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_32

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_17

    goto :goto_32

    .line 92
    :cond_17
    sget-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->LABEL:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    .line 96
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lt p2, p1, :cond_31

    .line 97
    iget-object p1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_31
    return p2

    :cond_32
    :goto_32
    const/4 p1, -0x1

    return p1
.end method

.method private startTitle(Ljava/lang/CharSequence;I)I
    .registers 5

    .line 168
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 169
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p2, v0, :cond_13

    .line 170
    sget-object p1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->START_DEFINITION:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object p1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    return p2

    :cond_13
    const/4 v0, 0x0

    .line 174
    iput-char v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->titleDelimiter:C

    .line 175
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2c

    const/16 v1, 0x27

    if-eq v0, v1, :cond_2c

    const/16 v1, 0x28

    if-eq v0, v1, :cond_27

    goto :goto_2e

    :cond_27
    const/16 v0, 0x29

    .line 182
    iput-char v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->titleDelimiter:C

    goto :goto_2e

    .line 179
    :cond_2c
    iput-char v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->titleDelimiter:C

    .line 186
    :goto_2e
    iget-char v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->titleDelimiter:C

    if-eqz v0, :cond_4d

    .line 187
    sget-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->TITLE:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title:Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    .line 190
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ne p2, p1, :cond_54

    .line 191
    iget-object p1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title:Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 194
    :cond_4d
    invoke-direct {p0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->finishReference()V

    .line 196
    sget-object p1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->START_DEFINITION:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object p1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    :cond_54
    :goto_54
    return p2
.end method

.method private title(Ljava/lang/CharSequence;I)I
    .registers 6

    .line 202
    iget-char v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->titleDelimiter:C

    invoke-static {p1, p2, v0}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkTitleContent(Ljava/lang/CharSequence;IC)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return v1

    .line 208
    :cond_a
    iget-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title:Ljava/lang/StringBuilder;

    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 210
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lt v0, p2, :cond_21

    .line 212
    iget-object p1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title:Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_21
    const/4 p2, 0x1

    add-int/2addr v0, p2

    .line 217
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {p1, v0, v2}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 218
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eq v0, p1, :cond_32

    return v1

    .line 222
    :cond_32
    iput-boolean p2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->referenceValid:Z

    .line 223
    invoke-direct {p0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->finishReference()V

    .line 224
    iget-object p1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraph:Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 227
    sget-object p1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->START_DEFINITION:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object p1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    return v0
.end method


# virtual methods
.method getDefinitions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/commonmark/node/LinkReferenceDefinition;",
            ">;"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->finishReference()V

    .line 79
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->definitions:Ljava/util/List;

    return-object v0
.end method

.method getParagraphContent()Ljava/lang/CharSequence;
    .registers 2

    .line 74
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraph:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method getState()Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;
    .registers 2

    .line 83
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    return-object v0
.end method

.method public parse(Ljava/lang/CharSequence;)V
    .registers 5

    .line 31
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraph:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_f

    .line 32
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraph:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    :cond_f
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraph:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 37
    :cond_15
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_4a

    .line 38
    sget-object v1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$1;->$SwitchMap$org$commonmark$internal$LinkReferenceDefinitionParser$State:[I

    iget-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    invoke-virtual {v2}, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4c

    goto :goto_43

    .line 61
    :pswitch_29
    invoke-direct {p0, p1, v0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title(Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_43

    .line 57
    :pswitch_2e
    invoke-direct {p0, p1, v0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->startTitle(Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_43

    .line 53
    :pswitch_33
    invoke-direct {p0, p1, v0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->destination(Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_43

    .line 49
    :pswitch_38
    invoke-direct {p0, p1, v0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label(Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_43

    .line 45
    :pswitch_3d
    invoke-direct {p0, p1, v0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->startDefinition(Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_43

    :pswitch_42
    return-void

    :goto_43
    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 67
    sget-object p1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->PARAGRAPH:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object p1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    :cond_4a
    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3d
        :pswitch_38
        :pswitch_33
        :pswitch_2e
        :pswitch_29
    .end packed-switch
.end method
