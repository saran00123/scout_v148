.class Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$InputValidator;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputValidator"
.end annotation


# instance fields
.field private mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;Lcom/google/android/material/textfield/TextInputEditText;)V
    .registers 3

    .line 255
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$InputValidator;->mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;)V
    .registers 4

    .line 252
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$InputValidator;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;Lcom/google/android/material/textfield/TextInputEditText;)V

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
    .registers 7

    .line 269
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-eqz p2, :cond_85

    .line 270
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$InputValidator;->mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getId()I

    move-result p2

    const p3, 0x7f0a00e5

    const/4 p4, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eq p2, p3, :cond_4b

    const p3, 0x7f0a00e9

    if-eq p2, p3, :cond_1a

    goto :goto_85

    .line 282
    :cond_1a
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/pilotlab/rollereye/Utils/JCType;->MatchPwd(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3c

    .line 283
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    const p3, 0x7f1101a1

    invoke-virtual {p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 284
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-static {p1, p4}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->access$702(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;Z)Z

    goto :goto_85

    .line 286
    :cond_3c
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 287
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->access$702(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;Z)Z

    goto :goto_85

    .line 272
    :cond_4b
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/pilotlab/rollereye/Utils/JCType;->MatchEmail(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_77

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/pilotlab/rollereye/Utils/JCType;->MatchUsername(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_77

    .line 273
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    const p3, 0x7f1101a0

    invoke-virtual {p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 274
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-static {p1, p4}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->access$502(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;Z)Z

    goto :goto_85

    .line 276
    :cond_77
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 277
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->access$502(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;Z)Z

    :cond_85
    :goto_85
    return-void
.end method
