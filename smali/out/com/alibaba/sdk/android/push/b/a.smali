.class public Lcom/alibaba/sdk/android/push/b/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "MPS:CloudPushService"

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getLogger(Ljava/lang/String;)Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/b/a;->b:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/b/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/g/g;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/push/b/a;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/push/b/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/push/b/a;->b:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/ams/common/b/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .registers 2

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/common/a/d;->a(I)V

    return-void
.end method

.method public a(IIIILcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 10

    sget-object v0, Lcom/alibaba/sdk/android/push/b/a;->b:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDoNotDisturb "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/sdk/android/push/b/a$1;

    invoke-direct {v0, p0, p5}, Lcom/alibaba/sdk/android/push/b/a$1;-><init>(Lcom/alibaba/sdk/android/push/b/a;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-static {p1, p2, p3, p4, v0}, Lcom/taobao/agoo/TaobaoRegister;->setDoNotDisturb(IIIILcom/aliyun/ams/emas/push/CommonCallback;)V

    return-void
.end method

.method public a(ILcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 4

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/g;->a()Lcom/alibaba/sdk/android/push/g/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/push/g/g;->a(ILcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public a(I[Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 6

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/g;->a()Lcom/alibaba/sdk/android/push/g/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/push/g/g;->a(I[Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/common/a/d;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 3

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/g;->a()Lcom/alibaba/sdk/android/push/g/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/g/g;->a(Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public a(Lcom/alibaba/sdk/android/push/notification/CPushMessage;)V
    .registers 2

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->to(Lcom/alibaba/sdk/android/push/notification/CPushMessage;)Lcom/aliyun/ams/emas/push/notification/CPushMessage;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/agoo/TaobaoRegister;->clickMessage(Lcom/aliyun/ams/emas/push/notification/CPushMessage;)V

    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .registers 2

    invoke-static {p1}, Lcom/taobao/agoo/TaobaoRegister;->setPushMsgReceiveService(Ljava/lang/Class;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/common/a/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 4

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/g;->a()Lcom/alibaba/sdk/android/push/g/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    invoke-static {p1}, Lcom/taobao/agoo/TaobaoRegister;->setDoNotDisturbMode(Z)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/agoo/TaobaoRegister;->clearNotificationCreatedByAliyun(Landroid/content/Context;)V

    return-void
.end method

.method public b(I[Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 6

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/g;->a()Lcom/alibaba/sdk/android/push/g/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/push/g/g;->b(I[Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/g;->a()Lcom/alibaba/sdk/android/push/g/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/g/g;->b(Landroid/content/Context;)V

    return-void
.end method

.method public b(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 3

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/g;->a()Lcom/alibaba/sdk/android/push/g/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/g/g;->b(Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public b(Lcom/alibaba/sdk/android/push/notification/CPushMessage;)V
    .registers 2

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->to(Lcom/alibaba/sdk/android/push/notification/CPushMessage;)Lcom/aliyun/ams/emas/push/notification/CPushMessage;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/agoo/TaobaoRegister;->dismissMessage(Lcom/aliyun/ams/emas/push/notification/CPushMessage;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/ams/common/b/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 4

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/g;->a()Lcom/alibaba/sdk/android/push/g/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/push/g/g;->b(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public b(Z)V
    .registers 2

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/common/a/d;->a(Z)V

    return-void
.end method

.method public c(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 3

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/g;->a()Lcom/alibaba/sdk/android/push/g/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/g/g;->f(Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/ams/common/b/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 4

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/g;->a()Lcom/alibaba/sdk/android/push/g/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/push/g/g;->c(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public d(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 3

    new-instance v0, Lcom/alibaba/sdk/android/push/b/a$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/push/b/a$2;-><init>(Lcom/alibaba/sdk/android/push/b/a;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/push/b/a;->f(Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 4

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/g;->a()Lcom/alibaba/sdk/android/push/g/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/push/g/g;->d(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public e(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 3

    new-instance v0, Lcom/alibaba/sdk/android/push/b/a$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/push/b/a$3;-><init>(Lcom/alibaba/sdk/android/push/b/a;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/push/b/a;->f(Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public f(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 3

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/g;->a()Lcom/alibaba/sdk/android/push/g/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/g/g;->c(Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method
