.class Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$EmptyTextListener;
.super Ljava/lang/Object;
.source "AccoutPwdActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptyTextListener"
.end annotation


# instance fields
.field private mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Lcom/google/android/material/textfield/TextInputEditText;)V
    .registers 3

    .line 237
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$EmptyTextListener;->mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 p1, 0x5

    if-eq p2, p1, :cond_6

    const/4 p1, 0x6

    if-ne p2, p1, :cond_70

    .line 245
    :cond_6
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$EmptyTextListener;->mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 246
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$EmptyTextListener;->mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getId()I

    move-result p1

    const p2, 0x7f0a0054

    const/4 p3, 0x1

    const v0, 0x7f110040

    if-eq p1, p2, :cond_5c

    const p2, 0x7f0a0056

    if-eq p1, p2, :cond_47

    const p2, 0x7f0a0058

    if-eq p1, p2, :cond_32

    goto :goto_70

    .line 252
    :cond_32
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-virtual {p2, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 253
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1, p3}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$202(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Z)Z

    goto :goto_70

    .line 248
    :cond_47
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-virtual {p2, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 249
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1, p3}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$202(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Z)Z

    goto :goto_70

    .line 256
    :cond_5c
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-virtual {p2, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 257
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1, p3}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$802(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Z)Z

    :cond_70
    :goto_70
    const/4 p1, 0x0

    return p1
.end method
