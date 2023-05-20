.class Lcom/alibaba/sdk/android/emas/h$a;
.super Ljava/lang/Object;
.source "SendManager.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/emas/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sdk/android/emas/h$1;)V
    .registers 2

    .line 226
    invoke-direct {p0}, Lcom/alibaba/sdk/android/emas/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 3

    .line 230
    instance-of p2, p1, Lcom/alibaba/sdk/android/emas/h$b;

    if-eqz p2, :cond_9

    .line 231
    check-cast p1, Lcom/alibaba/sdk/android/emas/h$b;

    .line 232
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/emas/h$b;->e()V

    :cond_9
    return-void
.end method
