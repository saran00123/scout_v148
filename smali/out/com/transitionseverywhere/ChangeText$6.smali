.class Lcom/transitionseverywhere/ChangeText$6;
.super Landroidx/transition/TransitionListenerAdapter;
.source "ChangeText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/ChangeText;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mPausedColor:I

.field final synthetic this$0:Lcom/transitionseverywhere/ChangeText;

.field final synthetic val$endColor:I

.field final synthetic val$endSelectionEnd:I

.field final synthetic val$endSelectionStart:I

.field final synthetic val$endText:Ljava/lang/CharSequence;

.field final synthetic val$startSelectionEnd:I

.field final synthetic val$startSelectionStart:I

.field final synthetic val$startText:Ljava/lang/CharSequence;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/ChangeText;Landroid/widget/TextView;Ljava/lang/CharSequence;IIILjava/lang/CharSequence;II)V
    .registers 10

    .line 271
    iput-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->this$0:Lcom/transitionseverywhere/ChangeText;

    iput-object p2, p0, Lcom/transitionseverywhere/ChangeText$6;->val$view:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/transitionseverywhere/ChangeText$6;->val$endText:Ljava/lang/CharSequence;

    iput p4, p0, Lcom/transitionseverywhere/ChangeText$6;->val$endSelectionStart:I

    iput p5, p0, Lcom/transitionseverywhere/ChangeText$6;->val$endSelectionEnd:I

    iput p6, p0, Lcom/transitionseverywhere/ChangeText$6;->val$endColor:I

    iput-object p7, p0, Lcom/transitionseverywhere/ChangeText$6;->val$startText:Ljava/lang/CharSequence;

    iput p8, p0, Lcom/transitionseverywhere/ChangeText$6;->val$startSelectionStart:I

    iput p9, p0, Lcom/transitionseverywhere/ChangeText$6;->val$startSelectionEnd:I

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 272
    iput p1, p0, Lcom/transitionseverywhere/ChangeText$6;->mPausedColor:I

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .registers 2
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 303
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .registers 5
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 276
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->this$0:Lcom/transitionseverywhere/ChangeText;

    invoke-static {p1}, Lcom/transitionseverywhere/ChangeText;->access$100(Lcom/transitionseverywhere/ChangeText;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_21

    .line 277
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->val$view:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transitionseverywhere/ChangeText$6;->val$endText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->val$view:Landroid/widget/TextView;

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_21

    .line 279
    iget-object v0, p0, Lcom/transitionseverywhere/ChangeText$6;->this$0:Lcom/transitionseverywhere/ChangeText;

    check-cast p1, Landroid/widget/EditText;

    iget v1, p0, Lcom/transitionseverywhere/ChangeText$6;->val$endSelectionStart:I

    iget v2, p0, Lcom/transitionseverywhere/ChangeText$6;->val$endSelectionEnd:I

    invoke-static {v0, p1, v1, v2}, Lcom/transitionseverywhere/ChangeText;->access$000(Lcom/transitionseverywhere/ChangeText;Landroid/widget/EditText;II)V

    .line 282
    :cond_21
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->this$0:Lcom/transitionseverywhere/ChangeText;

    invoke-static {p1}, Lcom/transitionseverywhere/ChangeText;->access$100(Lcom/transitionseverywhere/ChangeText;)I

    move-result p1

    if-lez p1, :cond_38

    .line 283
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->val$view:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    iput p1, p0, Lcom/transitionseverywhere/ChangeText$6;->mPausedColor:I

    .line 284
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->val$view:Landroid/widget/TextView;

    iget v0, p0, Lcom/transitionseverywhere/ChangeText$6;->val$endColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_38
    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .registers 5
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 290
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->this$0:Lcom/transitionseverywhere/ChangeText;

    invoke-static {p1}, Lcom/transitionseverywhere/ChangeText;->access$100(Lcom/transitionseverywhere/ChangeText;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_21

    .line 291
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->val$view:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transitionseverywhere/ChangeText$6;->val$startText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->val$view:Landroid/widget/TextView;

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_21

    .line 293
    iget-object v0, p0, Lcom/transitionseverywhere/ChangeText$6;->this$0:Lcom/transitionseverywhere/ChangeText;

    check-cast p1, Landroid/widget/EditText;

    iget v1, p0, Lcom/transitionseverywhere/ChangeText$6;->val$startSelectionStart:I

    iget v2, p0, Lcom/transitionseverywhere/ChangeText$6;->val$startSelectionEnd:I

    invoke-static {v0, p1, v1, v2}, Lcom/transitionseverywhere/ChangeText;->access$000(Lcom/transitionseverywhere/ChangeText;Landroid/widget/EditText;II)V

    .line 296
    :cond_21
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->this$0:Lcom/transitionseverywhere/ChangeText;

    invoke-static {p1}, Lcom/transitionseverywhere/ChangeText;->access$100(Lcom/transitionseverywhere/ChangeText;)I

    move-result p1

    if-lez p1, :cond_30

    .line 297
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$6;->val$view:Landroid/widget/TextView;

    iget v0, p0, Lcom/transitionseverywhere/ChangeText$6;->mPausedColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_30
    return-void
.end method
