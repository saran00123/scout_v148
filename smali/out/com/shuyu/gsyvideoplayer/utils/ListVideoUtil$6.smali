.class Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$6;
.super Ljava/lang/Object;
.source "ListVideoUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveChangeFirstLogic(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)V
    .registers 2

    .line 340
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$6;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 343
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$6;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$600(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->getIsLand()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 344
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$6;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$600(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->resolveByClick()V

    :cond_16
    return-void
.end method
