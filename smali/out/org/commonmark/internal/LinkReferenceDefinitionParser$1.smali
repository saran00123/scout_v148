.class synthetic Lorg/commonmark/internal/LinkReferenceDefinitionParser$1;
.super Ljava/lang/Object;
.source "LinkReferenceDefinitionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/internal/LinkReferenceDefinitionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$commonmark$internal$LinkReferenceDefinitionParser$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 38
    invoke-static {}, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->values()[Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$1;->$SwitchMap$org$commonmark$internal$LinkReferenceDefinitionParser$State:[I

    :try_start_9
    sget-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$1;->$SwitchMap$org$commonmark$internal$LinkReferenceDefinitionParser$State:[I

    sget-object v1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->PARAGRAPH:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    invoke-virtual {v1}, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$1;->$SwitchMap$org$commonmark$internal$LinkReferenceDefinitionParser$State:[I

    sget-object v1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->START_DEFINITION:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    invoke-virtual {v1}, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$1;->$SwitchMap$org$commonmark$internal$LinkReferenceDefinitionParser$State:[I

    sget-object v1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->LABEL:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    invoke-virtual {v1}, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$1;->$SwitchMap$org$commonmark$internal$LinkReferenceDefinitionParser$State:[I

    sget-object v1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->DESTINATION:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    invoke-virtual {v1}, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    :try_start_35
    sget-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$1;->$SwitchMap$org$commonmark$internal$LinkReferenceDefinitionParser$State:[I

    sget-object v1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->START_TITLE:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    invoke-virtual {v1}, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_40

    :catch_40
    :try_start_40
    sget-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$1;->$SwitchMap$org$commonmark$internal$LinkReferenceDefinitionParser$State:[I

    sget-object v1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->TITLE:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    invoke-virtual {v1}, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_4b

    :catch_4b
    return-void
.end method
