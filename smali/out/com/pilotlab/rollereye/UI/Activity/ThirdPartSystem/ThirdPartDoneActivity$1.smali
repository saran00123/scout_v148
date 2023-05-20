.class Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity$1;
.super Landroid/text/style/URLSpan;
.source "ThirdPartDoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->setUpData(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;Ljava/lang/String;)V
    .registers 3

    .line 77
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;

    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 4

    .line 81
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 83
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;

    const v1, 0x7f060022

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
