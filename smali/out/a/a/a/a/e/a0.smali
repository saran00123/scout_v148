.class public final La/a/a/a/e/a0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
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

.field public final synthetic b:Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter;


# direct methods
.method public constructor <init>(La/a/a/a/e/y;Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter;)V
    .registers 3

    iput-object p1, p0, La/a/a/a/e/a0;->a:La/a/a/a/e/y;

    iput-object p2, p0, La/a/a/a/e/a0;->b:Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, La/a/a/a/e/a0;->a:La/a/a/a/e/y;

    sget-object v1, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;->RuntimeError:Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    iget-object v2, p0, La/a/a/a/e/a0;->b:Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter;

    invoke-static {v0, v1, v2}, La/a/a/a/e/y;->a(La/a/a/a/e/y;Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter;)V

    .line 2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
