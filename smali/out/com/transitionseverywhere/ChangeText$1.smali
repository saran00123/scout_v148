.class Lcom/transitionseverywhere/ChangeText$1;
.super Landroid/animation/AnimatorListenerAdapter;
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
.field final synthetic this$0:Lcom/transitionseverywhere/ChangeText;

.field final synthetic val$endSelectionEnd:I

.field final synthetic val$endSelectionStart:I

.field final synthetic val$endText:Ljava/lang/CharSequence;

.field final synthetic val$startText:Ljava/lang/CharSequence;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;II)V
    .registers 7

    .line 198
    iput-object p1, p0, Lcom/transitionseverywhere/ChangeText$1;->this$0:Lcom/transitionseverywhere/ChangeText;

    iput-object p2, p0, Lcom/transitionseverywhere/ChangeText$1;->val$startText:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/transitionseverywhere/ChangeText$1;->val$view:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/transitionseverywhere/ChangeText$1;->val$endText:Ljava/lang/CharSequence;

    iput p5, p0, Lcom/transitionseverywhere/ChangeText$1;->val$endSelectionStart:I

    iput p6, p0, Lcom/transitionseverywhere/ChangeText$1;->val$endSelectionEnd:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .line 201
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$1;->val$startText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/transitionseverywhere/ChangeText$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 203
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$1;->val$view:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transitionseverywhere/ChangeText$1;->val$endText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$1;->val$view:Landroid/widget/TextView;

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_26

    .line 205
    iget-object v0, p0, Lcom/transitionseverywhere/ChangeText$1;->this$0:Lcom/transitionseverywhere/ChangeText;

    check-cast p1, Landroid/widget/EditText;

    iget v1, p0, Lcom/transitionseverywhere/ChangeText$1;->val$endSelectionStart:I

    iget v2, p0, Lcom/transitionseverywhere/ChangeText$1;->val$endSelectionEnd:I

    invoke-static {v0, p1, v1, v2}, Lcom/transitionseverywhere/ChangeText;->access$000(Lcom/transitionseverywhere/ChangeText;Landroid/widget/EditText;II)V

    :cond_26
    return-void
.end method
