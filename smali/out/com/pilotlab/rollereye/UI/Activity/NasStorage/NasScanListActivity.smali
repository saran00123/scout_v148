.class public Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.source "NasScanListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$onItemCallback;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_nas_scan_list_rv:Landroidx/recyclerview/widget/RecyclerView;

.field private activity_nas_scan_next:Landroid/widget/Button;

.field private activity_nas_scan_nv:Landroidx/core/widget/NestedScrollView;

.field private activity_nas_scan_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

.field private activity_nas_scan_storage_ip_et:Lcom/google/android/material/textfield/TextInputEditText;

.field private activity_nas_scan_storage_name_et:Lcom/google/android/material/textfield/TextInputEditText;

.field private activity_nas_scan_tips:Landroid/widget/TextView;

.field private activity_nas_scan_username_et:Lcom/google/android/material/textfield/TextInputEditText;

.field private center_title:Landroid/widget/TextView;

.field private connectNasInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private layout_left:Landroid/widget/LinearLayout;

.field private myConfigDispose:Lio/reactivex/disposables/Disposable;

.field private nasList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private nasListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;-><init>()V

    const-string v0, "NasScanListActivity"

    .line 64
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->TAG:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->nasList:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->connectNasInfo:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;)Landroidx/core/widget/NestedScrollView;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_nv:Landroidx/core/widget/NestedScrollView;

    return-object p0
.end method

.method private checkAvailable()Z
    .registers 7

    .line 260
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_storage_name_et:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    const v3, 0x7f1101e6

    const v4, 0x7f0a0108

    if-eqz v0, :cond_28

    .line 261
    invoke-virtual {p0, v4}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 264
    :cond_28
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_storage_ip_et:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pilotlab/rollereye/Utils/JCType;->MatchIP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 265
    invoke-virtual {p0, v4}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 268
    :cond_47
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_storage_name_et:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_storage_ip_et:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pilotlab/rollereye/Utils/JCType;->MatchIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x1

    goto :goto_6a

    :cond_69
    const/4 v0, 0x0

    :goto_6a
    return v0
.end method

.method private connectNAS()V
    .registers 8

    const-string v0, "password"

    const-string v1, "username"

    const-string v2, "ip"

    const-string v3, "name"

    .line 178
    sget-object v4, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->CONNECT_NAS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 179
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 181
    :try_start_f
    iget-object v6, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->connectNasInfo:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->connectNasInfo:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->connectNasInfo:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->connectNasInfo:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception v0

    .line 186
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 189
    :goto_38
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 190
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    .line 191
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v4, v5}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_59
    return-void
.end method

.method private getNasList()V
    .registers 6

    .line 169
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SCAN_NASLIST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 170
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 171
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    .line 172
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_24
    return-void
.end method

.method private test()V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_3e

    .line 151
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "192.168.1."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ip"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->nasList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_3e
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->nasListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;->updateUI()V

    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 11
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "ip"

    const-string v1, "name"

    .line 212
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 213
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :try_start_21
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 216
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v3, "body"

    .line 217
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_36} :catch_dd

    const/16 v3, 0xbc5

    const-string v4, "status"

    if-ne p1, v3, :cond_94

    .line 219
    :try_start_3c
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_45

    .line 220
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 221
    :cond_45
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_82

    .line 222
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->nasList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const-string p1, "nas"

    .line 223
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v2, 0x0

    .line 224
    :goto_57
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_7c

    .line 225
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 226
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 227
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->nasList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 231
    :cond_7c
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->nasListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;->updateUI()V

    goto :goto_e1

    .line 233
    :cond_82
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_next:Landroid/widget/Button;

    const v0, 0x7f11023d

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_e1

    :cond_94
    const/16 v0, 0xbc6

    if-ne p1, v0, :cond_e1

    .line 235
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_a1

    .line 236
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 237
    :cond_a1
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_c0

    .line 238
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 239
    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "connectNasInfo"

    .line 240
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->connectNasInfo:Ljava/util/Map;

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v0, 0x123

    .line 241
    invoke-virtual {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e1

    :cond_c0
    const-string p1, "msg"

    .line 243
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const p1, 0x7f11003e

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity$2;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 248
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V
    :try_end_dc
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_dc} :catch_dd

    goto :goto_e1

    :catch_dd
    move-exception p1

    .line 253
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_e1
    :goto_e1
    return-void
.end method

.method protected initEvent()V
    .registers 3

    .line 92
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V

    .line 93
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_next:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method protected initView()V
    .registers 4

    .line 111
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initView()V

    const v0, 0x7f0a0108

    .line 112
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_next:Landroid/widget/Button;

    const v0, 0x7f0a0210

    .line 113
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->center_title:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0448

    .line 115
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0110

    .line 116
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_tips:Landroid/widget/TextView;

    const v0, 0x7f0a010e

    .line 118
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_storage_name_et:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a010c

    .line 119
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_storage_ip_et:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a0111

    .line 120
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_username_et:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a010a

    .line 121
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a0107

    .line 124
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_list_rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 125
    new-instance v0, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->nasList:Ljava/util/List;

    invoke-direct {v0, p0, v1, p0}, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$onItemCallback;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->nasListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;

    .line 126
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_list_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 127
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_list_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 128
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_list_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DividerItemDecoration;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 130
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_list_rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->nasListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0a0109

    .line 132
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_nv:Landroidx/core/widget/NestedScrollView;

    .line 134
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0, v2}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 320
    invoke-super {p0, p1, p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x123

    if-ne p1, p3, :cond_d

    const/4 p1, -0x1

    if-ne p2, p1, :cond_d

    .line 322
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->finish()V

    :cond_d
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0108

    if-eq p1, v0, :cond_15

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_10

    goto/16 :goto_98

    .line 296
    :cond_10
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->finish()V

    goto/16 :goto_98

    .line 277
    :cond_15
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->connectNasInfo:Ljava/util/Map;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_storage_name_et:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->connectNasInfo:Ljava/util/Map;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_storage_ip_et:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ip"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->connectNasInfo:Ljava/util/Map;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_username_et:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "username"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->connectNasInfo:Ljava/util/Map;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->checkAvailable()Z

    move-result p1

    if-eqz p1, :cond_98

    .line 282
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz p1, :cond_98

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_98

    .line 283
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object p1

    sget-object v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne p1, v0, :cond_7b

    .line 284
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->connectNAS()V

    goto :goto_98

    :cond_7b
    const p1, 0x7f1102ac

    .line 286
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f11003e

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity$3;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 291
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :cond_98
    :goto_98
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 303
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 5

    .line 308
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_storage_name_et:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->nasList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_storage_ip_et:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->nasList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    const-string v0, "ip"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 310
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x12c

    invoke-static {v0, v1, p1}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity$4;

    invoke-direct {p2, p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 162
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onPause()V

    .line 163
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 164
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 141
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onResume()V

    .line 142
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 143
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 145
    :cond_14
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->getNasList()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0039

    .line 80
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 9

    .line 198
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpData(Landroid/os/Bundle;)V

    .line 199
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->center_title:Landroid/widget/TextView;

    const v0, 0x7f110272

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    new-instance p1, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_tips:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801ab

    .line 202
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_tips:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_tips:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    move-result v2

    int-to-double v5, v2

    mul-double/2addr v5, v3

    double-to-int v2, v5

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 204
    new-instance v1, Landroid/text/style/ImageSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v0, 0x3

    const/16 v2, 0x22

    .line 205
    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 206
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->activity_nas_scan_tips:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 85
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpView()V

    .line 86
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->initView()V

    .line 87
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->initEvent()V

    return-void
.end method
