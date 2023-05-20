.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$6;
.super Ljava/lang/Object;
.source "CloudPreViewActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)V
    .registers 2

    .line 362
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

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

    .line 371
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$702(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;I)I

    .line 372
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$402(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;)Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    .line 373
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$1200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
