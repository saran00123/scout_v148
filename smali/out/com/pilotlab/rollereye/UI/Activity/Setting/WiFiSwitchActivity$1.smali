.class Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity$1;
.super Ljava/lang/Object;
.source "WiFiSwitchActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_2b

    .line 97
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->clearFocus()V

    .line 98
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;

    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_2a

    .line 100
    iget-object p3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;

    invoke-virtual {p3}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2a
    const/4 p1, 0x1

    :cond_2b
    return p1
.end method
