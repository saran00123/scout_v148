.class Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$EmptyTextListener;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptyTextListener"
.end annotation


# instance fields
.field private mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;Lcom/google/android/material/textfield/TextInputEditText;)V
    .registers 3

    .line 298
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$EmptyTextListener;->mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 p1, 0x5

    if-eq p2, p1, :cond_6

    const/4 p1, 0x6

    if-ne p2, p1, :cond_56

    .line 306
    :cond_6
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$EmptyTextListener;->mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    .line 307
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$EmptyTextListener;->mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getId()I

    move-result p1

    const p2, 0x7f0a00e5

    const/4 p3, 0x1

    const v0, 0x7f110040

    if-eq p1, p2, :cond_42

    const p2, 0x7f0a00e9

    if-eq p1, p2, :cond_2d

    goto :goto_56

    .line 314
    :cond_2d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-virtual {p2, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 315
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-static {p1, p3}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->access$702(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;Z)Z

    goto :goto_56

    .line 309
    :cond_42
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-virtual {p2, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 310
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-static {p1, p3}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->access$502(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;Z)Z

    :cond_56
    :goto_56
    const/4 p1, 0x0

    return p1
.end method
