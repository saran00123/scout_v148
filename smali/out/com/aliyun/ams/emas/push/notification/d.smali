.class public abstract Lcom/aliyun/ams/emas/push/notification/d;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:I

.field protected d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/4 v0, 0x0

    iput v0, p0, Lcom/aliyun/ams/emas/push/notification/d;->c:I

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Landroid/app/Notification;
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/aliyun/ams/emas/push/notification/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 44
    iput p1, p0, Lcom/aliyun/ams/emas/push/notification/d;->c:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/aliyun/ams/emas/push/notification/d;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/aliyun/ams/emas/push/notification/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/aliyun/ams/emas/push/notification/d;->b:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/aliyun/ams/emas/push/notification/d;->c:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/aliyun/ams/emas/push/notification/d;->d:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/aliyun/ams/emas/push/notification/d;->d:Ljava/lang/String;

    return-object v0
.end method
