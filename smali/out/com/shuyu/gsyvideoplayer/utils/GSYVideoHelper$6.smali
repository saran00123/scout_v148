.class Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$6;
.super Ljava/lang/Object;
.source "GSYVideoHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->startPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)V
    .registers 2

    .line 435
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$6;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 438
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$6;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->doFullBtnLogic()V

    return-void
.end method
