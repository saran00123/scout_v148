.class Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptyTextListener"
.end annotation


# instance fields
.field private mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Lcom/google/android/material/textfield/TextInputEditText;)V
    .registers 3

    .line 276
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;->mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 p1, 0x5

    if-eq p2, p1, :cond_6

    const/4 p1, 0x6

    if-ne p2, p1, :cond_79

    .line 284
    :cond_6
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;->mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_79

    .line 285
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;->mTextInputEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getId()I

    move-result p1

    const/4 p2, 0x1

    const p3, 0x7f110040

    sparse-switch p1, :sswitch_data_7c

    goto :goto_79

    .line 287
    :sswitch_26
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-virtual {v0, p3}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 288
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$802(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Z)Z

    goto :goto_79

    .line 300
    :sswitch_3b
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$1300(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-virtual {v0, p3}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 301
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$1402(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Z)Z

    goto :goto_79

    .line 296
    :sswitch_50
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-virtual {v0, p3}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 297
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$1002(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Z)Z

    goto :goto_79

    .line 291
    :sswitch_65
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-virtual {v0, p3}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 292
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$602(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Z)Z

    :cond_79
    :goto_79
    const/4 p1, 0x0

    return p1

    nop

    :sswitch_data_7c
    .sparse-switch
        0x7f0a0149 -> :sswitch_65
        0x7f0a014b -> :sswitch_50
        0x7f0a014d -> :sswitch_3b
        0x7f0a0151 -> :sswitch_26
    .end sparse-switch
.end method
