.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$2;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .registers 6

    .line 240
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$1400(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineHeight()I

    move-result p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$1400(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getLineCount()I

    move-result p2

    mul-int/2addr p1, p2

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$1400(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    if-ge p3, p1, :cond_29

    .line 242
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$1502(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Z)Z

    goto :goto_2f

    .line 243
    :cond_29
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$1502(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Z)Z

    :goto_2f
    return-void
.end method
