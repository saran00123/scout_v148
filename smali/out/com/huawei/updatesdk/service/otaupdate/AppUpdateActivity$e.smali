.class Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity;->c(Lcom/huawei/updatesdk/a/b/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/updatesdk/a/b/b/b;

.field final synthetic b:Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity;


# direct methods
.method constructor <init>(Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity;Lcom/huawei/updatesdk/a/b/b/b;)V
    .registers 3

    iput-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity$e;->b:Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity;

    iput-object p2, p0, Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity$e;->a:Lcom/huawei/updatesdk/a/b/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity$e;->a:Lcom/huawei/updatesdk/a/b/b/b;

    invoke-virtual {v0}, Lcom/huawei/updatesdk/a/b/b/b;->b()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-string v1, "INSTALL_STATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "INSTALL_TYPE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/huawei/updatesdk/service/otaupdate/d;->a()Lcom/huawei/updatesdk/service/otaupdate/d;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity$e;->b:Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity;

    const/4 v4, -0x1

    invoke-static {v3, v1, v0, v4}, Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity;->a(Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity;III)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/huawei/updatesdk/service/otaupdate/d;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity$e;->b:Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity;

    invoke-static {v0, v1}, Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity;->a(Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity;I)V

    return-void
.end method
