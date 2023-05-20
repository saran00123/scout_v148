.class Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputValidator"
.end annotation


# instance fields
.field private mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;


# direct methods
.method private constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Lcom/google/android/material/textfield/TextInputEditText;)V
    .registers 3

    .line 205
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$1;)V
    .registers 4

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Lcom/google/android/material/textfield/TextInputEditText;)V

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
    .registers 8

    .line 219
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-eqz p2, :cond_14e

    .line 220
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getId()I

    move-result p2

    const p3, 0x7f11022e

    const/4 p4, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    sparse-switch p2, :sswitch_data_150

    goto/16 :goto_14e

    .line 231
    :sswitch_17
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/pilotlab/rollereye/Utils/JCType;->MatchUsername(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 232
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    const p3, 0x7f11022f

    invoke-virtual {p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 233
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1, p4}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$802(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Z)Z

    goto/16 :goto_14e

    .line 235
    :cond_3a
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 236
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$802(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Z)Z

    goto/16 :goto_14e

    .line 260
    :sswitch_4a
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$1200(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$1100(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_82

    .line 261
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$1300(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-virtual {p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 262
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1, p4}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$1402(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Z)Z

    goto/16 :goto_14e

    .line 264
    :cond_82
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$1300(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 265
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$1402(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Z)Z

    goto/16 :goto_14e

    .line 240
    :sswitch_92
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/pilotlab/rollereye/Utils/JCType;->MatchPwd(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b4

    .line 241
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    const v2, 0x7f1101a1

    invoke-virtual {p2, v2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 242
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1, p4}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$1002(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Z)Z

    goto :goto_c2

    .line 244
    :cond_b4
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 245
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$1002(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Z)Z

    .line 248
    :goto_c2
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$1100(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14e

    .line 249
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$1200(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$1100(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10f

    .line 250
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$1300(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-virtual {p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 251
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1, p4}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$1402(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Z)Z

    goto :goto_14e

    .line 253
    :cond_10f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$1300(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 254
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$1402(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Z)Z

    goto :goto_14e

    .line 222
    :sswitch_11e
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/pilotlab/rollereye/Utils/JCType;->MatchEmail(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_140

    .line 223
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    const p3, 0x7f11022d

    invoke-virtual {p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 224
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1, p4}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$602(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Z)Z

    goto :goto_14e

    .line 226
    :cond_140
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 227
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$602(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Z)Z

    :cond_14e
    :goto_14e
    return-void

    nop

    :sswitch_data_150
    .sparse-switch
        0x7f0a0149 -> :sswitch_11e
        0x7f0a014b -> :sswitch_92
        0x7f0a014d -> :sswitch_4a
        0x7f0a0151 -> :sswitch_17
    .end sparse-switch
.end method
