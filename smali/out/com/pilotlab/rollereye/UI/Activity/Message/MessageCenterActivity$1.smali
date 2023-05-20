.class Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$1;
.super Ljava/lang/Object;
.source "MessageCenterActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_20

    .line 102
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 103
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 104
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_3d

    .line 106
    :cond_20
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 107
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 108
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_3d
    return-void
.end method
