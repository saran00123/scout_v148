.class public Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity$n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/huawei/updatesdk/service/otaupdate/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "n"
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity;


# direct methods
.method public constructor <init>(Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity$n;->a:Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_37

    :try_start_6
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.huawei.appmarket.intent.action.ThirdUpdateRemindAction"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity$n;->a:Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity;

    invoke-static {v0}, Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity;->c(Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity$n;->a:Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_1b} :catch_1c

    goto :goto_37

    :catch_1c
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "goHiappUpgrade error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppUpdateActivity"

    invoke-static {v0, p1}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity$n;->a:Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity;

    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity;->finish()V

    return-void
.end method
