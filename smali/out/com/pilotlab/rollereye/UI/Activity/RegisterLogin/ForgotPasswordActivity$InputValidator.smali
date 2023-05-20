.class Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$InputValidator;
.super Ljava/lang/Object;
.source "ForgotPasswordActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputValidator"
.end annotation


# instance fields
.field private mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;


# direct methods
.method private constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;Lcom/google/android/material/textfield/TextInputEditText;)V
    .registers 3

    .line 149
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$InputValidator;->mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1;)V
    .registers 4

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$InputValidator;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;Lcom/google/android/material/textfield/TextInputEditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 165
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-eqz p2, :cond_4f

    .line 166
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$InputValidator;->mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getId()I

    move-result p2

    const p3, 0x7f0a00cb

    if-eq p2, p3, :cond_12

    goto :goto_4f

    .line 168
    :cond_12
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/pilotlab/rollereye/Utils/JCType;->MatchEmail(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3f

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/pilotlab/rollereye/Utils/JCType;->MatchUsername(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 169
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;

    const p3, 0x7f1101a0

    invoke-virtual {p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 170
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->access$402(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;Z)Z

    goto :goto_4f

    .line 172
    :cond_3f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 173
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->access$402(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;Z)Z

    :cond_4f
    :goto_4f
    return-void
.end method
