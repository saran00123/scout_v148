.class public final La/a/a/a/e/g0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/a/a/e/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/e/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lkotlinx/coroutines/Job;

.field public final e:Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;

.field public final f:La/a/a/a/e/m;

.field public final g:La/a/a/a/f/a;

.field public final h:La/a/a/a/e/h0;

.field public final i:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;ILa/a/a/a/e/m;La/a/a/a/f/a;La/a/a/a/e/h0;Lkotlin/coroutines/CoroutineContext;)V
    .registers 8
    .param p1    # Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # La/a/a/a/e/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # La/a/a/a/f/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # La/a/a/a/e/h0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "challengeStatusReceiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorRequestExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creqData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "transactionTimerProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workContext"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/e/g0$a;->e:Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;

    iput-object p3, p0, La/a/a/a/e/g0$a;->f:La/a/a/a/e/m;

    iput-object p4, p0, La/a/a/a/e/g0$a;->g:La/a/a/a/f/a;

    iput-object p5, p0, La/a/a/a/e/g0$a;->h:La/a/a/a/e/h0;

    iput-object p6, p0, La/a/a/a/e/g0$a;->i:Lkotlin/coroutines/CoroutineContext;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, La/a/a/a/e/g0$a;->a:J

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, La/a/a/a/e/g0$a;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object p1, p0, La/a/a/a/e/g0$a;->c:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method


# virtual methods
.method public a()Lkotlinx/coroutines/flow/Flow;
    .registers 2

    .line 1
    iget-object v0, p0, La/a/a/a/e/g0$a;->c:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, La/a/a/a/e/g0$a;->d:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_9
    iput-object v1, p0, La/a/a/a/e/g0$a;->d:Lkotlinx/coroutines/Job;

    iget-object v0, p0, La/a/a/a/e/g0$a;->h:La/a/a/a/e/h0;

    iget-object v1, p0, La/a/a/a/e/g0$a;->g:La/a/a/a/f/a;

    .line 1
    iget-object v1, v1, La/a/a/a/f/a;->d:Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    .line 2
    invoke-interface {v0, v1}, La/a/a/a/e/h0;->a(Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;)V

    return-void
.end method
