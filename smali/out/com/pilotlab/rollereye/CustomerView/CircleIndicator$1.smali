.class Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;
.super Ljava/lang/Object;
.source "CircleIndicator.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

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

    .line 201
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    invoke-static {v0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$100(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    .line 202
    invoke-static {v0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$100(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_1e

    goto/16 :goto_b1

    .line 206
    :cond_1e
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    invoke-static {v0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$200(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 207
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    invoke-static {v0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$200(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 208
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    invoke-static {v0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$200(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 211
    :cond_3c
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    invoke-static {v0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$300(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 212
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    invoke-static {v0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$300(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 213
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    invoke-static {v0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$300(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 217
    :cond_5a
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    invoke-static {v0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$400(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)I

    move-result v0

    if-ltz v0, :cond_89

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    .line 218
    invoke-static {v0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$400(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_89

    .line 219
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    .line 220
    invoke-static {v1}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$500(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 221
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    invoke-static {v1}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$200(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    invoke-static {v0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$200(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 225
    :cond_89
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_ac

    .line 227
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    .line 228
    invoke-static {v1}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$600(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 229
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    invoke-static {v1}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$300(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    invoke-static {v0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$300(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 232
    :cond_ac
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$402(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;I)I

    :cond_b1
    :goto_b1
    return-void
.end method
