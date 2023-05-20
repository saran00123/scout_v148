.class final enum Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;
.super Ljava/lang/Enum;
.source "LinkReferenceDefinitionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/internal/LinkReferenceDefinitionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

.field public static final enum DESTINATION:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

.field public static final enum LABEL:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

.field public static final enum PARAGRAPH:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

.field public static final enum START_DEFINITION:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

.field public static final enum START_TITLE:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

.field public static final enum TITLE:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 249
    new-instance v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    const/4 v1, 0x0

    const-string v2, "START_DEFINITION"

    invoke-direct {v0, v2, v1}, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->START_DEFINITION:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 251
    new-instance v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    const/4 v2, 0x1

    const-string v3, "LABEL"

    invoke-direct {v0, v3, v2}, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->LABEL:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 253
    new-instance v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    const/4 v3, 0x2

    const-string v4, "DESTINATION"

    invoke-direct {v0, v4, v3}, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->DESTINATION:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 255
    new-instance v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    const/4 v4, 0x3

    const-string v5, "START_TITLE"

    invoke-direct {v0, v5, v4}, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->START_TITLE:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 257
    new-instance v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    const/4 v5, 0x4

    const-string v6, "TITLE"

    invoke-direct {v0, v6, v5}, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->TITLE:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 260
    new-instance v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    const/4 v6, 0x5

    const-string v7, "PARAGRAPH"

    invoke-direct {v0, v7, v6}, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->PARAGRAPH:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    const/4 v0, 0x6

    .line 247
    new-array v0, v0, [Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    sget-object v7, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->START_DEFINITION:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    aput-object v7, v0, v1

    sget-object v1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->LABEL:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->DESTINATION:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->START_TITLE:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->TITLE:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->PARAGRAPH:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    aput-object v1, v0, v6

    sput-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->$VALUES:[Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 247
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;
    .registers 2

    .line 247
    const-class v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    return-object p0
.end method

.method public static values()[Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;
    .registers 1

    .line 247
    sget-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->$VALUES:[Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    invoke-virtual {v0}, [Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    return-object v0
.end method
