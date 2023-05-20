.class public final enum Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "CompleteSuccessful",
        "CompleteUnsuccessful",
        "Cancel",
        "Timeout",
        "ProtocolError",
        "RuntimeError",
        "3ds2sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

.field public static final enum Cancel:Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

.field public static final enum CompleteSuccessful:Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

.field public static final enum CompleteUnsuccessful:Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

.field public static final enum ProtocolError:Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

.field public static final enum RuntimeError:Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

.field public static final enum Timeout:Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    new-instance v1, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    const/4 v2, 0x0

    const-string v3, "CompleteSuccessful"

    invoke-direct {v1, v3, v2}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;->CompleteSuccessful:Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    const/4 v2, 0x1

    const-string v3, "CompleteUnsuccessful"

    invoke-direct {v1, v3, v2}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;->CompleteUnsuccessful:Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    const/4 v2, 0x2

    const-string v3, "Cancel"

    invoke-direct {v1, v3, v2}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;->Cancel:Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    const/4 v2, 0x3

    const-string v3, "Timeout"

    invoke-direct {v1, v3, v2}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;->Timeout:Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    const/4 v2, 0x4

    const-string v3, "ProtocolError"

    invoke-direct {v1, v3, v2}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;->ProtocolError:Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    const/4 v2, 0x5

    const-string v3, "RuntimeError"

    invoke-direct {v1, v3, v2}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;->RuntimeError:Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;->$VALUES:[Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;
    .registers 2

    const-class v0, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    return-object p0
.end method

.method public static values()[Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;
    .registers 1

    sget-object v0, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;->$VALUES:[Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    invoke-virtual {v0}, [Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    return-object v0
.end method
