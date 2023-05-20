.class public Lcom/alibaba/sdk/android/push/register/GcmRegister;
.super Ljava/lang/Object;
.source "GcmRegister.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MPS:GcmRegister"

.field private static volatile isRegistered:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 17
    sget-boolean v0, Lcom/alibaba/sdk/android/push/register/GcmRegister;->isRegistered:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .line 17
    sput-boolean p0, Lcom/alibaba/sdk/android/push/register/GcmRegister;->isRegistered:Z

    return p0
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 22
    invoke-static {p0}, Lcom/alibaba/sdk/android/push/utils/SysUtils;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 p0, 0x0

    .line 23
    new-array p1, p0, [Ljava/lang/Object;

    const-string p2, "MPS:GcmRegister"

    const-string v0, "not in main process, return"

    invoke-static {p2, v0, p1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    .line 26
    :cond_11
    invoke-static {}, Lcom/alibaba/sdk/android/push/utils/ThreadUtil;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/push/register/GcmRegister$1;

    invoke-direct {v1, p1, p2, p0}, Lcom/alibaba/sdk/android/push/register/GcmRegister$1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method
