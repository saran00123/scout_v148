.class Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$2;
.super Ljava/lang/Object;
.source "MessageCenterActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->initEvent()V
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

    .line 124
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 4

    .line 127
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    const/4 v0, 0x1

    if-ne p2, p1, :cond_18

    .line 128
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_21

    .line 130
    :cond_18
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :goto_21
    return-void
.end method
