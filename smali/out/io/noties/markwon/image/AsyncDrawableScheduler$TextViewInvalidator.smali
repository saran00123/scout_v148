.class Lio/noties/markwon/image/AsyncDrawableScheduler$TextViewInvalidator;
.super Ljava/lang/Object;
.source "AsyncDrawableScheduler.java"

# interfaces
.implements Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$Invalidator;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/image/AsyncDrawableScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextViewInvalidator"
.end annotation


# instance fields
.field private final textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 2
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$TextViewInvalidator;->textView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public invalidate()V
    .registers 2

    .line 187
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$TextViewInvalidator;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 188
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$TextViewInvalidator;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .registers 3

    .line 193
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$TextViewInvalidator;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
