.class public Lcom/xiaomi/push/service/XMJobService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/XMJobService$a;
    }
.end annotation


# static fields
.field static a:Landroid/app/Service;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMJobService;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    iget-object p1, p0, Lcom/xiaomi/push/service/XMJobService;->a:Landroid/os/IBinder;

    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    return-object p1
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_12

    new-instance v0, Lcom/xiaomi/push/service/XMJobService$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMJobService$a;-><init>(Landroid/app/Service;)V

    iget-object v0, v0, Lcom/xiaomi/push/service/XMJobService$a;->a:Landroid/os/Binder;

    iput-object v0, p0, Lcom/xiaomi/push/service/XMJobService;->a:Landroid/os/IBinder;

    :cond_12
    sput-object p0, Lcom/xiaomi/push/service/XMJobService;->a:Landroid/app/Service;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/push/service/XMJobService;->a:Landroid/app/Service;

    return-void
.end method
