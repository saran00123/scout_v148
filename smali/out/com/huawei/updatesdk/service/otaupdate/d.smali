.class public Lcom/huawei/updatesdk/service/otaupdate/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/huawei/updatesdk/service/otaupdate/d;


# instance fields
.field private a:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/updatesdk/service/otaupdate/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/huawei/updatesdk/service/otaupdate/d;
    .registers 2

    sget-object v0, Lcom/huawei/updatesdk/service/otaupdate/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/huawei/updatesdk/service/otaupdate/d;->c:Lcom/huawei/updatesdk/service/otaupdate/d;

    if-nez v1, :cond_e

    new-instance v1, Lcom/huawei/updatesdk/service/otaupdate/d;

    invoke-direct {v1}, Lcom/huawei/updatesdk/service/otaupdate/d;-><init>()V

    sput-object v1, Lcom/huawei/updatesdk/service/otaupdate/d;->c:Lcom/huawei/updatesdk/service/otaupdate/d;

    :cond_e
    sget-object v1, Lcom/huawei/updatesdk/service/otaupdate/d;->c:Lcom/huawei/updatesdk/service/otaupdate/d;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/d;->a:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;->onMarketStoreError(I)V

    :cond_7
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/d;->a:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;->onMarketInstallInfo(Landroid/content/Intent;)V

    :cond_7
    return-void
.end method

.method public a(Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/d;->a:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/d;->a:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;->onUpdateInfo(Landroid/content/Intent;)V

    :cond_7
    return-void
.end method
