.class Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$2;
.super Landroid/database/DataSetObserver;
.source "CircleIndicator.java"


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

    .line 244
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$2;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .line 247
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 248
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$2;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    invoke-static {v0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$100(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    .line 252
    :cond_c
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$2;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    invoke-static {v0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$100(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 253
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$2;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_23

    return-void

    .line 257
    :cond_23
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$2;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    invoke-static {v1}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$400(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)I

    move-result v1

    if-ge v1, v0, :cond_39

    .line 258
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$2;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    invoke-static {v0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$100(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$402(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;I)I

    goto :goto_3f

    .line 260
    :cond_39
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$2;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$402(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;I)I

    .line 263
    :goto_3f
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$2;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    invoke-static {v0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->access$700(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)V

    return-void
.end method
