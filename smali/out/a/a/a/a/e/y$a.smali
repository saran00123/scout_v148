.class public final La/a/a/a/e/y$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a/e/y;->doChallenge(Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;Lcom/stripe/android/stripe3ds2/transaction/ChallengeParameters;Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:La/a/a/a/e/y;

.field public final synthetic b:Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;

.field public final synthetic c:Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$a;


# direct methods
.method public constructor <init>(La/a/a/a/e/y;Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$a;)V
    .registers 4

    iput-object p1, p0, La/a/a/a/e/y$a;->a:La/a/a/a/e/y;

    iput-object p2, p0, La/a/a/a/e/y$a;->b:Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;

    iput-object p3, p0, La/a/a/a/e/y$a;->c:Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, La/a/a/a/e/y$a;->a:La/a/a/a/e/y;

    .line 2
    iget-object v0, v0, La/a/a/a/e/y;->v:Landroid/content/Intent;

    if-eqz v0, :cond_d

    .line 3
    iget-object v1, p0, La/a/a/a/e/y$a;->c:Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$a;

    sget-object v2, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;->RuntimeError:Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    invoke-virtual {v1, v0, v2}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$a;->start(Landroid/content/Intent;Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;)V

    .line 4
    :cond_d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
