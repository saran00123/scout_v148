.class public Lcom/huawei/hms/availableupdate/g0$a;
.super Landroid/os/Handler;
.source "SilentUpdateWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/availableupdate/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hms/availableupdate/g0;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/availableupdate/g0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/availableupdate/g0$a;->a:Lcom/huawei/hms/availableupdate/g0;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2
    new-instance v1, Lcom/huawei/hms/ui/SafeBundle;

    invoke-direct {v1, v0}, Lcom/huawei/hms/ui/SafeBundle;-><init>(Landroid/os/Bundle;)V

    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_22

    goto :goto_20

    .line 14
    :pswitch_f
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/g0$a;->a:Lcom/huawei/hms/availableupdate/g0;

    invoke-static {p1, v1}, Lcom/huawei/hms/availableupdate/g0;->c(Lcom/huawei/hms/availableupdate/g0;Lcom/huawei/hms/ui/SafeBundle;)V

    goto :goto_20

    .line 15
    :pswitch_15
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/g0$a;->a:Lcom/huawei/hms/availableupdate/g0;

    invoke-static {p1, v1}, Lcom/huawei/hms/availableupdate/g0;->b(Lcom/huawei/hms/availableupdate/g0;Lcom/huawei/hms/ui/SafeBundle;)V

    goto :goto_20

    .line 16
    :pswitch_1b
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/g0$a;->a:Lcom/huawei/hms/availableupdate/g0;

    invoke-static {p1, v1}, Lcom/huawei/hms/availableupdate/g0;->a(Lcom/huawei/hms/availableupdate/g0;Lcom/huawei/hms/ui/SafeBundle;)V

    :goto_20
    return-void

    nop

    :pswitch_data_22
    .packed-switch 0x65
        :pswitch_1b
        :pswitch_15
        :pswitch_f
    .end packed-switch
.end method
