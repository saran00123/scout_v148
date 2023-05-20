.class Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$12;
.super Ljava/lang/Object;
.source "GuideConDevActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)V
    .registers 2

    .line 513
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 516
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 517
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    :cond_11
    return-void
.end method
