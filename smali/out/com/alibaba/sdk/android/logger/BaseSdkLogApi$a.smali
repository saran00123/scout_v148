.class Lcom/alibaba/sdk/android/logger/BaseSdkLogApi$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/logger/ILogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;


# direct methods
.method private constructor <init>(Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi$a;->a:Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;Lcom/alibaba/sdk/android/logger/BaseSdkLogApi$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi$a;-><init>(Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;)V

    return-void
.end method


# virtual methods
.method public print(Lcom/alibaba/sdk/android/logger/LogLevel;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi$a;->a:Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->a(Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;Lcom/alibaba/sdk/android/logger/LogLevel;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi$a;->a:Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;

    invoke-static {v0}, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->a(Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;)Lcom/alibaba/sdk/android/logger/ILogger;

    move-result-object v0

    if-eqz v0, :cond_19

    :try_start_10
    iget-object v0, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi$a;->a:Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;

    invoke-static {v0}, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->a(Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;)Lcom/alibaba/sdk/android/logger/ILogger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/sdk/android/logger/ILogger;->print(Lcom/alibaba/sdk/android/logger/LogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :cond_19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi$a;->a:Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;

    invoke-static {v1}, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->b(Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_2b
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sdk/android/logger/ILogger;

    :try_start_37
    invoke-interface {v1, p1, p2, p3}, Lcom/alibaba/sdk/android/logger/ILogger;->print(Lcom/alibaba/sdk/android/logger/LogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3a} :catch_2b

    goto :goto_2b

    :cond_3b
    return-void
.end method
