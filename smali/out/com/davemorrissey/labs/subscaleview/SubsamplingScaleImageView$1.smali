.class Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;
.super Ljava/lang/Object;
.source "SubsamplingScaleImageView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;


# direct methods
.method constructor <init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)V
    .registers 2

    .line 293
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;->this$0:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 295
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_27

    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;->this$0:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->access$000(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 296
    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;->this$0:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->access$102(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;I)I

    .line 297
    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;->this$0:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->access$000(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->access$201(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/view/View$OnLongClickListener;)V

    .line 298
    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;->this$0:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->performLongClick()Z

    .line 299
    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;->this$0:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->access$301(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/view/View$OnLongClickListener;)V

    :cond_27
    return v0
.end method
