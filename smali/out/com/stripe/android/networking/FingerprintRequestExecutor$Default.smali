.class public final Lcom/stripe/android/networking/FingerprintRequestExecutor$Default;
.super Ljava/lang/Object;
.source "FingerprintRequestExecutor.kt"

# interfaces
.implements Lcom/stripe/android/networking/FingerprintRequestExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/networking/FingerprintRequestExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFingerprintRequestExecutor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FingerprintRequestExecutor.kt\ncom/stripe/android/networking/FingerprintRequestExecutor$Default\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,44:1\n1#2:45\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/android/networking/FingerprintRequestExecutor$Default;",
        "Lcom/stripe/android/networking/FingerprintRequestExecutor;",
        "connectionFactory",
        "Lcom/stripe/android/networking/ConnectionFactory;",
        "workContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Lcom/stripe/android/networking/ConnectionFactory;Lkotlin/coroutines/CoroutineContext;)V",
        "timestampSupplier",
        "Lkotlin/Function0;",
        "",
        "execute",
        "Lcom/stripe/android/FingerprintData;",
        "request",
        "Lcom/stripe/android/networking/FingerprintRequest;",
        "(Lcom/stripe/android/networking/FingerprintRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "executeInternal",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final connectionFactory:Lcom/stripe/android/networking/ConnectionFactory;

.field private final timestampSupplier:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final workContext:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default;-><init>(Lcom/stripe/android/networking/ConnectionFactory;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/android/networking/ConnectionFactory;Lkotlin/coroutines/CoroutineContext;)V
    .registers 4
    .param p1    # Lcom/stripe/android/networking/ConnectionFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "connectionFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default;->connectionFactory:Lcom/stripe/android/networking/ConnectionFactory;

    iput-object p2, p0, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default;->workContext:Lkotlin/coroutines/CoroutineContext;

    .line 19
    sget-object p1, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default$timestampSupplier$1;->INSTANCE:Lcom/stripe/android/networking/FingerprintRequestExecutor$Default$timestampSupplier$1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default;->timestampSupplier:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/android/networking/ConnectionFactory;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_b

    .line 16
    new-instance p1, Lcom/stripe/android/networking/ConnectionFactory$Default;

    invoke-direct {p1}, Lcom/stripe/android/networking/ConnectionFactory$Default;-><init>()V

    check-cast p1, Lcom/stripe/android/networking/ConnectionFactory;

    :cond_b
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_15

    .line 17
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    :cond_15
    invoke-direct {p0, p1, p2}, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default;-><init>(Lcom/stripe/android/networking/ConnectionFactory;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public static final synthetic access$executeInternal(Lcom/stripe/android/networking/FingerprintRequestExecutor$Default;Lcom/stripe/android/networking/FingerprintRequest;)Lcom/stripe/android/FingerprintData;
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default;->executeInternal(Lcom/stripe/android/networking/FingerprintRequest;)Lcom/stripe/android/FingerprintData;

    move-result-object p0

    return-object p0
.end method

.method private final executeInternal(Lcom/stripe/android/networking/FingerprintRequest;)Lcom/stripe/android/FingerprintData;
    .registers 7

    .line 33
    iget-object v0, p0, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default;->connectionFactory:Lcom/stripe/android/networking/ConnectionFactory;

    check-cast p1, Lcom/stripe/android/networking/StripeRequest;

    invoke-interface {v0, p1}, Lcom/stripe/android/networking/ConnectionFactory;->create(Lcom/stripe/android/networking/StripeRequest;)Lcom/stripe/android/networking/StripeConnection;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    :try_start_e
    move-object v2, p1

    check-cast v2, Lcom/stripe/android/networking/StripeConnection;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_11} :catch_55
    .catchall {:try_start_e .. :try_end_11} :catchall_53

    .line 34
    :try_start_11
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default;

    .line 35
    invoke-interface {v2}, Lcom/stripe/android/networking/StripeConnection;->getResponse()Lcom/stripe/android/networking/StripeResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/android/networking/StripeResponse;->isOk$stripe_release()Z

    move-result v4

    if-eqz v4, :cond_21

    goto :goto_22

    :cond_21
    move-object v2, v0

    :goto_22
    if-eqz v2, :cond_34

    .line 36
    new-instance v4, Lcom/stripe/android/model/parsers/FingerprintDataJsonParser;

    iget-object v3, v3, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default;->timestampSupplier:Lkotlin/jvm/functions/Function0;

    invoke-direct {v4, v3}, Lcom/stripe/android/model/parsers/FingerprintDataJsonParser;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 37
    invoke-virtual {v2}, Lcom/stripe/android/networking/StripeResponse;->getResponseJson$stripe_release()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/stripe/android/model/parsers/FingerprintDataJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/FingerprintData;

    move-result-object v2

    goto :goto_35

    :cond_34
    move-object v2, v0

    .line 34
    :goto_35
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_39} :catch_3a
    .catchall {:try_start_11 .. :try_end_39} :catchall_53

    goto :goto_45

    :catch_3a
    move-exception v2

    :try_start_3b
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 39
    :goto_45
    invoke-static {v2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    goto :goto_4d

    :cond_4c
    move-object v0, v2

    :goto_4d
    check-cast v0, Lcom/stripe/android/FingerprintData;
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_4f} :catch_55
    .catchall {:try_start_3b .. :try_end_4f} :catchall_53

    .line 34
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_53
    move-exception v0

    goto :goto_58

    :catch_55
    move-exception v0

    move-object v1, v0

    .line 33
    :try_start_57
    throw v1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_53

    :goto_58
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public execute(Lcom/stripe/android/networking/FingerprintRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .param p1    # Lcom/stripe/android/networking/FingerprintRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/networking/FingerprintRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/android/FingerprintData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default;->workContext:Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default$execute$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default$execute$2;-><init>(Lcom/stripe/android/networking/FingerprintRequestExecutor$Default;Lcom/stripe/android/networking/FingerprintRequest;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
