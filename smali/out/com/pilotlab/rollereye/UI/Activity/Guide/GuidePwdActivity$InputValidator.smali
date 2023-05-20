.class Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;
.super Ljava/lang/Object;
.source "GuidePwdActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputValidator"
.end annotation


# instance fields
.field private mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;


# direct methods
.method private constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;Lcom/google/android/material/textfield/TextInputEditText;)V
    .registers 3

    .line 308
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$1;)V
    .registers 4

    .line 305
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;Lcom/google/android/material/textfield/TextInputEditText;)V

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

    .line 322
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-eqz p2, :cond_111

    .line 323
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getId()I

    move-result p2

    const p3, 0x7f0a00d0

    const p4, 0x7f11022e

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, p3, :cond_cc

    const p3, 0x7f0a00d3

    if-eq p2, p3, :cond_1e

    goto/16 :goto_111

    .line 325
    :cond_1e
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/pilotlab/rollereye/Utils/JCType;->MatchWiFiPwd(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_40

    .line 326
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    const p3, 0x7f110193

    invoke-virtual {p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 327
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-static {p1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->access$302(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;Z)Z

    goto :goto_70

    .line 328
    :cond_40
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/pilotlab/rollereye/Utils/JCType;->MatchDefaultPwd(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 329
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    const p3, 0x7f110192

    invoke-virtual {p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 330
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-static {p1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->access$302(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;Z)Z

    goto :goto_70

    .line 332
    :cond_62
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 333
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->access$302(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;Z)Z

    .line 336
    :goto_70
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_111

    .line 337
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bd

    .line 338
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-virtual {p2, p4}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 339
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-static {p1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->access$702(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;Z)Z

    goto :goto_111

    .line 341
    :cond_bd
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 342
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->access$702(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;Z)Z

    goto :goto_111

    .line 348
    :cond_cc
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_103

    .line 349
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-virtual {p2, p4}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 350
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-static {p1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->access$702(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;Z)Z

    goto :goto_111

    .line 352
    :cond_103
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 353
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->access$702(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;Z)Z

    :cond_111
    :goto_111
    return-void
.end method
