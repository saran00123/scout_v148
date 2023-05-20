.class public final Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "La/a/a/a/e/g0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;


# direct methods
.method public constructor <init>(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$d;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$d;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    .line 2
    iget-object v0, v0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_76

    check-cast v0, Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$d;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    :try_start_18
    sget-object v1, La/a/a/a/e/h0$a;->b:La/a/a/a/e/h0$a;

    invoke-static {v0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)La/a/a/a/h/r;

    move-result-object v0

    .line 4
    iget-object v0, v0, La/a/a/a/h/r;->c:La/a/a/a/f/a;

    .line 5
    iget-object v0, v0, La/a/a/a/f/a;->d:Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    const-string v1, "sdkTransactionId"

    .line 6
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/a/a/a/e/h0$a;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/a/e/g0;

    if-eqz v1, :cond_36

    .line 7
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_58

    .line 8
    :cond_36
    new-instance v1, Lcom/stripe/android/stripe3ds2/exceptions/SDKRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No TransactionTimer for transaction id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2, v3}, Lcom/stripe/android/stripe3ds2/exceptions/SDKRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
    :try_end_4f
    .catchall {:try_start_18 .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception v0

    .line 9
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_58
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_67

    iget-object v2, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$d;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    invoke-static {v2}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->a(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)La/a/a/a/c/c;

    move-result-object v2

    invoke-interface {v2, v1}, La/a/a/a/c/c;->a(Ljava/lang/Throwable;)V

    :cond_67
    new-instance v1, La/a/a/a/e/p;

    invoke-direct {v1}, La/a/a/a/e/p;-><init>()V

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    move-object v0, v1

    :cond_73
    check-cast v0, La/a/a/a/e/g0;

    goto :goto_7b

    :cond_76
    new-instance v0, La/a/a/a/e/p;

    invoke-direct {v0}, La/a/a/a/e/p;-><init>()V

    :goto_7b
    return-object v0
.end method
