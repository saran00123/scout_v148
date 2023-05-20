.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity$6;
.super Ljava/lang/Object;
.source "PreViewActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;)V
    .registers 2

    .line 265
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;

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

    .line 274
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->access$102(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;I)I

    .line 275
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->access$202(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;)Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    .line 276
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;)Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getCreateTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
