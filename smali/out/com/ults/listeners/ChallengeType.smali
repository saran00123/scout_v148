.class public final enum Lcom/ults/listeners/ChallengeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ults/listeners/ChallengeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ults/listeners/ChallengeType;

.field public static final enum HTML_UI:Lcom/ults/listeners/ChallengeType;

.field public static final enum MULTI_SELECT:Lcom/ults/listeners/ChallengeType;

.field public static final enum OUT_OF_BAND:Lcom/ults/listeners/ChallengeType;

.field public static final enum SINGLE_SELECT:Lcom/ults/listeners/ChallengeType;

.field public static final enum SINGLE_TEXT_INPUT:Lcom/ults/listeners/ChallengeType;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    new-instance v0, Lcom/ults/listeners/ChallengeType;

    const/4 v1, 0x0

    const-string v2, "SINGLE_TEXT_INPUT"

    invoke-direct {v0, v2, v1}, Lcom/ults/listeners/ChallengeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ults/listeners/ChallengeType;->SINGLE_TEXT_INPUT:Lcom/ults/listeners/ChallengeType;

    new-instance v2, Lcom/ults/listeners/ChallengeType;

    const/4 v3, 0x1

    const-string v4, "SINGLE_SELECT"

    invoke-direct {v2, v4, v3}, Lcom/ults/listeners/ChallengeType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ults/listeners/ChallengeType;->SINGLE_SELECT:Lcom/ults/listeners/ChallengeType;

    new-instance v4, Lcom/ults/listeners/ChallengeType;

    const/4 v5, 0x2

    const-string v6, "MULTI_SELECT"

    invoke-direct {v4, v6, v5}, Lcom/ults/listeners/ChallengeType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ults/listeners/ChallengeType;->MULTI_SELECT:Lcom/ults/listeners/ChallengeType;

    new-instance v6, Lcom/ults/listeners/ChallengeType;

    const/4 v7, 0x3

    const-string v8, "OUT_OF_BAND"

    invoke-direct {v6, v8, v7}, Lcom/ults/listeners/ChallengeType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ults/listeners/ChallengeType;->OUT_OF_BAND:Lcom/ults/listeners/ChallengeType;

    new-instance v8, Lcom/ults/listeners/ChallengeType;

    const/4 v9, 0x4

    const-string v10, "HTML_UI"

    invoke-direct {v8, v10, v9}, Lcom/ults/listeners/ChallengeType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ults/listeners/ChallengeType;->HTML_UI:Lcom/ults/listeners/ChallengeType;

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/ults/listeners/ChallengeType;

    aput-object v0, v10, v1

    aput-object v2, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    sput-object v10, Lcom/ults/listeners/ChallengeType;->$VALUES:[Lcom/ults/listeners/ChallengeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ults/listeners/ChallengeType;
    .registers 2

    const-class v0, Lcom/ults/listeners/ChallengeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ults/listeners/ChallengeType;

    return-object p0
.end method

.method public static values()[Lcom/ults/listeners/ChallengeType;
    .registers 1

    sget-object v0, Lcom/ults/listeners/ChallengeType;->$VALUES:[Lcom/ults/listeners/ChallengeType;

    invoke-virtual {v0}, [Lcom/ults/listeners/ChallengeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ults/listeners/ChallengeType;

    return-object v0
.end method
