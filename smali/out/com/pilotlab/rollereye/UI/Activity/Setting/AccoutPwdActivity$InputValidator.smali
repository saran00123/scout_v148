.class Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;
.super Ljava/lang/Object;
.source "AccoutPwdActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputValidator"
.end annotation


# instance fields
.field private mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;


# direct methods
.method private constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Lcom/google/android/material/textfield/TextInputEditText;)V
    .registers 3

    .line 174
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$1;)V
    .registers 4

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Lcom/google/android/material/textfield/TextInputEditText;)V

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
    .registers 9

    .line 188
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-eqz p2, :cond_123

    .line 189
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getId()I

    move-result p2

    const p3, 0x7f0a0054

    const p4, 0x7f11022e

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p2, p3, :cond_de

    const p3, 0x7f0a0056

    const v3, 0x7f1101a1

    if-eq p2, p3, :cond_b0

    const p3, 0x7f0a0058

    if-eq p2, p3, :cond_26

    goto/16 :goto_123

    .line 201
    :cond_26
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/pilotlab/rollereye/Utils/JCType;->MatchPwd(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_45

    .line 202
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-virtual {p2, v3}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 203
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$402(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Z)Z

    goto :goto_53

    .line 205
    :cond_45
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 206
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$402(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Z)Z

    .line 210
    :goto_53
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_123

    .line 211
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a1

    .line 212
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-virtual {p2, p4}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 213
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$802(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Z)Z

    goto/16 :goto_123

    .line 215
    :cond_a1
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 216
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$802(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Z)Z

    goto :goto_123

    .line 191
    :cond_b0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/pilotlab/rollereye/Utils/JCType;->MatchWiFiPwd(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_cf

    .line 192
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-virtual {p2, v3}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 193
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$202(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Z)Z

    goto :goto_123

    .line 195
    :cond_cf
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 196
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$202(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Z)Z

    goto :goto_123

    .line 221
    :cond_de
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_115

    .line 222
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-virtual {p2, p4}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 223
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$802(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Z)Z

    goto :goto_123

    .line 225
    :cond_115
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 226
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$802(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Z)Z

    :cond_123
    :goto_123
    return-void
.end method
