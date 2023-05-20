.class Lio/noties/markwon/PrecomputedTextSetterCompat$1;
.super Ljava/lang/Object;
.source "PrecomputedTextSetterCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/noties/markwon/PrecomputedTextSetterCompat;->setText(Landroid/widget/TextView;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/noties/markwon/PrecomputedTextSetterCompat;

.field final synthetic val$bufferType:Landroid/widget/TextView$BufferType;

.field final synthetic val$markdown:Landroid/text/Spanned;

.field final synthetic val$onComplete:Ljava/lang/Runnable;

.field final synthetic val$reference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lio/noties/markwon/PrecomputedTextSetterCompat;Ljava/lang/ref/WeakReference;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V
    .registers 6

    .line 54
    iput-object p1, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->this$0:Lio/noties/markwon/PrecomputedTextSetterCompat;

    iput-object p2, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$reference:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$markdown:Landroid/text/Spanned;

    iput-object p4, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$bufferType:Landroid/widget/TextView$BufferType;

    iput-object p5, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 58
    :try_start_0
    iget-object v0, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$markdown:Landroid/text/Spanned;

    invoke-static {v0, v1}, Lio/noties/markwon/PrecomputedTextSetterCompat;->access$000(Landroid/widget/TextView;Landroid/text/Spanned;)Landroidx/core/text/PrecomputedTextCompat;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 60
    iget-object v1, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$bufferType:Landroid/widget/TextView$BufferType;

    iget-object v3, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$onComplete:Ljava/lang/Runnable;

    invoke-static {v1, v0, v2, v3}, Lio/noties/markwon/PrecomputedTextSetterCompat;->access$100(Landroid/widget/TextView;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_39

    :catch_20
    move-exception v0

    const-string v1, "PrecomputdTxtSetterCmpt"

    const-string v2, "Exception during pre-computing text"

    .line 63
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    iget-object v0, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$markdown:Landroid/text/Spanned;

    iget-object v2, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$bufferType:Landroid/widget/TextView$BufferType;

    iget-object v3, p0, Lio/noties/markwon/PrecomputedTextSetterCompat$1;->val$onComplete:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lio/noties/markwon/PrecomputedTextSetterCompat;->access$100(Landroid/widget/TextView;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V

    :cond_39
    :goto_39
    return-void
.end method
