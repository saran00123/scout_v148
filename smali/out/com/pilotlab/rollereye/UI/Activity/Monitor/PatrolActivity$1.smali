.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$1;
.super Ljava/lang/Object;
.source "PatrolActivity.java"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/SwipeMenuCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->initSwipeRecycleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateMenu(Lcom/yanzhenjie/recyclerview/SwipeMenu;Lcom/yanzhenjie/recyclerview/SwipeMenu;I)V
    .registers 8

    .line 174
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    const/high16 p3, 0x42480000    # 50.0f

    invoke-static {p1, p3}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    .line 175
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {v0, p3}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p3

    .line 178
    new-instance v0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-direct {v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    const v3, 0x7f06006f

    .line 179
    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;

    move-result-object v0

    const v1, 0x7f08016b

    .line 180
    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->setImage(I)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;

    move-result-object v0

    const/4 v1, -0x1

    .line 181
    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->setTextColor(I)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->setWidth(I)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;

    move-result-object p1

    .line 183
    invoke-virtual {p1, p3}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->setHeight(I)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;

    move-result-object p1

    .line 184
    invoke-virtual {p2, p1}, Lcom/yanzhenjie/recyclerview/SwipeMenu;->addMenuItem(Lcom/yanzhenjie/recyclerview/SwipeMenuItem;)V

    return-void
.end method
