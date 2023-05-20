.class public final Lcom/stripe/android/networking/ApiRequestExecutor$Default;
.super Ljava/lang/Object;
.source "ApiRequestExecutor.kt"

# interfaces
.implements Lcom/stripe/android/networking/ApiRequestExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/networking/ApiRequestExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0000\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\rH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/android/networking/ApiRequestExecutor$Default;",
        "Lcom/stripe/android/networking/ApiRequestExecutor;",
        "logger",
        "Lcom/stripe/android/Logger;",
        "(Lcom/stripe/android/Logger;)V",
        "connectionFactory",
        "Lcom/stripe/android/networking/ConnectionFactory$Default;",
        "execute",
        "Lcom/stripe/android/networking/StripeResponse;",
        "request",
        "Lcom/stripe/android/networking/ApiRequest;",
        "Lcom/stripe/android/networking/FileUploadRequest;",
        "executeInternal",
        "Lcom/stripe/android/networking/StripeRequest;",
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
.field private final connectionFactory:Lcom/stripe/android/networking/ConnectionFactory$Default;

.field private final logger:Lcom/stripe/android/Logger;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/stripe/android/networking/ApiRequestExecutor$Default;-><init>(Lcom/stripe/android/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/android/Logger;)V
    .registers 3
    .param p1    # Lcom/stripe/android/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/networking/ApiRequestExecutor$Default;->logger:Lcom/stripe/android/Logger;

    .line 18
    new-instance p1, Lcom/stripe/android/networking/ConnectionFactory$Default;

    invoke-direct {p1}, Lcom/stripe/android/networking/ConnectionFactory$Default;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/networking/ApiRequestExecutor$Default;->connectionFactory:Lcom/stripe/android/networking/ConnectionFactory$Default;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/android/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_a

    .line 16
    sget-object p1, Lcom/stripe/android/Logger;->Companion:Lcom/stripe/android/Logger$Companion;

    invoke-virtual {p1}, Lcom/stripe/android/Logger$Companion;->noop$stripe_release()Lcom/stripe/android/Logger;

    move-result-object p1

    :cond_a
    invoke-direct {p0, p1}, Lcom/stripe/android/networking/ApiRequestExecutor$Default;-><init>(Lcom/stripe/android/Logger;)V

    return-void
.end method

.method private final executeInternal(Lcom/stripe/android/networking/StripeRequest;)Lcom/stripe/android/networking/StripeResponse;
    .registers 8

    .line 29
    iget-object v0, p0, Lcom/stripe/android/networking/ApiRequestExecutor$Default;->logger:Lcom/stripe/android/Logger;

    invoke-virtual {p1}, Lcom/stripe/android/networking/StripeRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/stripe/android/Logger;->info(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/stripe/android/networking/ApiRequestExecutor$Default;->connectionFactory:Lcom/stripe/android/networking/ConnectionFactory$Default;

    invoke-virtual {v0, p1}, Lcom/stripe/android/networking/ConnectionFactory$Default;->create(Lcom/stripe/android/networking/StripeRequest;)Lcom/stripe/android/networking/StripeConnection;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    :try_start_14
    move-object v2, v0

    check-cast v2, Lcom/stripe/android/networking/StripeConnection;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_42
    .catchall {:try_start_14 .. :try_end_17} :catchall_40

    .line 33
    :try_start_17
    invoke-interface {v2}, Lcom/stripe/android/networking/StripeConnection;->getResponse()Lcom/stripe/android/networking/StripeResponse;

    move-result-object v2

    .line 34
    iget-object v3, p0, Lcom/stripe/android/networking/ApiRequestExecutor$Default;->logger:Lcom/stripe/android/Logger;

    invoke-virtual {v2}, Lcom/stripe/android/networking/StripeResponse;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/android/Logger;->info(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_24} :catch_28
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_24} :catch_42
    .catchall {:try_start_17 .. :try_end_24} :catchall_40

    .line 35
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :catch_28
    move-exception v2

    .line 37
    :try_start_29
    iget-object v3, p0, Lcom/stripe/android/networking/ApiRequestExecutor$Default;->logger:Lcom/stripe/android/Logger;

    const-string v4, "Exception while making Stripe API request"

    move-object v5, v2

    check-cast v5, Ljava/lang/Throwable;

    invoke-interface {v3, v4, v5}, Lcom/stripe/android/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    sget-object v3, Lcom/stripe/android/exception/APIConnectionException;->Companion:Lcom/stripe/android/exception/APIConnectionException$Companion;

    invoke-virtual {p1}, Lcom/stripe/android/networking/StripeRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Lcom/stripe/android/exception/APIConnectionException$Companion;->create$stripe_release(Ljava/io/IOException;Ljava/lang/String;)Lcom/stripe/android/exception/APIConnectionException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_40} :catch_42
    .catchall {:try_start_29 .. :try_end_40} :catchall_40

    :catchall_40
    move-exception p1

    goto :goto_45

    :catch_42
    move-exception p1

    move-object v1, p1

    .line 31
    :try_start_44
    throw v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_40

    :goto_45
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public execute(Lcom/stripe/android/networking/ApiRequest;)Lcom/stripe/android/networking/StripeResponse;
    .registers 3
    .param p1    # Lcom/stripe/android/networking/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    check-cast p1, Lcom/stripe/android/networking/StripeRequest;

    invoke-direct {p0, p1}, Lcom/stripe/android/networking/ApiRequestExecutor$Default;->executeInternal(Lcom/stripe/android/networking/StripeRequest;)Lcom/stripe/android/networking/StripeResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcom/stripe/android/networking/FileUploadRequest;)Lcom/stripe/android/networking/StripeResponse;
    .registers 3
    .param p1    # Lcom/stripe/android/networking/FileUploadRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    check-cast p1, Lcom/stripe/android/networking/StripeRequest;

    invoke-direct {p0, p1}, Lcom/stripe/android/networking/ApiRequestExecutor$Default;->executeInternal(Lcom/stripe/android/networking/StripeRequest;)Lcom/stripe/android/networking/StripeResponse;

    move-result-object p1

    return-object p1
.end method
