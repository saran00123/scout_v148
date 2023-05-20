.class public Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.source "NasPathActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$onItemCallback;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_nas_empty_ry:Landroid/widget/RelativeLayout;

.field private activity_nas_path_rv:Landroidx/recyclerview/widget/RecyclerView;

.field private allDirectoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private isNew:Z

.field private layout_left:Landroid/widget/LinearLayout;

.field private nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

.field private nasDirectoryAdapter:Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;-><init>()V

    const-string v0, "NasPathActivity"

    .line 42
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->connectNasInfo:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->allDirectoryList:Ljava/util/List;

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->isNew:Z

    return-void
.end method

.method private getPath()V
    .registers 6

    .line 142
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->GET_NAS_DIRECTORY:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 143
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 144
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    .line 145
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

.method private setNasConfig()V
    .registers 6

    .line 150
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SET_NAS_CONFIG:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 151
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 152
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    const/4 v1, 0x0

    .line 155
    :try_start_14
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_24} :catch_26

    move-object v1, v2

    goto :goto_2a

    :catch_26
    move-exception v2

    .line 157
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 159
    :goto_2a
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v3, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v4, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_3a
    return-void
.end method

.method private test()V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1e

    .line 134
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->allDirectoryList:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "directory--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    :cond_1e
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->isNew:Z

    if-nez v0, :cond_2d

    .line 137
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->nasDirectoryAdapter:Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->setSavePath(Ljava/lang/String;)V

    .line 138
    :cond_2d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->nasDirectoryAdapter:Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->updateUI()V

    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 11
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 165
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 166
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :try_start_1d
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 169
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "body"

    .line 170
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_32} :catch_106

    const/16 v1, 0xbc7

    const v2, 0x7f11003e

    const-string v3, "status"

    if-ne p1, v1, :cond_a8

    .line 172
    :try_start_3b
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_44

    .line 173
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 174
    :cond_44
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_8d

    .line 175
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->allDirectoryList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const-string p1, "allDirectory"

    .line 176
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v1, "saveDirectory"

    .line 177
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6a

    .line 179
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->activity_nas_empty_ry:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_6f

    .line 181
    :cond_6a
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->activity_nas_empty_ry:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 183
    :goto_6f
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_81

    .line 184
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->allDirectoryList:Ljava/util/List;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    .line 186
    :cond_81
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->nasDirectoryAdapter:Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->setSavePath(Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->nasDirectoryAdapter:Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->updateUI()V

    goto/16 :goto_10a

    :cond_8d
    const p1, 0x7f1101da

    .line 191
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity$1;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_10a

    :cond_a8
    const/16 v1, 0xbc9

    if-ne p1, v1, :cond_10a

    .line 199
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_b5

    .line 200
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 201
    :cond_b5
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_eb

    .line 203
    iget-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->isNew:Z
    :try_end_bd
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_bd} :catch_106

    const-string v0, "nasConfigBean"

    const/4 v1, -0x1

    if-eqz p1, :cond_db

    .line 204
    :try_start_c2
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->setResult(I)V

    .line 205
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 206
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 207
    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->startActivity(Landroid/content/Intent;)V

    .line 209
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->finish()V

    goto :goto_10a

    .line 211
    :cond_db
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 212
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v1, p1}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->setResult(ILandroid/content/Intent;)V

    .line 214
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->finish()V

    goto :goto_10a

    :cond_eb
    const p1, 0x7f11023d

    .line 217
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity$2;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 222
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V
    :try_end_105
    .catch Lorg/json/JSONException; {:try_start_c2 .. :try_end_105} :catch_106

    goto :goto_10a

    :catch_106
    move-exception p1

    .line 228
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_10a
    :goto_10a
    return-void
.end method

.method protected initEvent()V
    .registers 2

    .line 77
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V

    .line 78
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .registers 4

    .line 83
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initView()V

    const v0, 0x7f0a0210

    .line 84
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->center_title:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0448

    .line 86
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->layout_left:Landroid/widget/LinearLayout;

    .line 87
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v0, 0x7f0a0105

    .line 89
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->activity_nas_empty_ry:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0106

    .line 92
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->activity_nas_path_rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 93
    new-instance v0, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->allDirectoryList:Ljava/util/List;

    invoke-direct {v0, p0, v2, p0}, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$onItemCallback;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->nasDirectoryAdapter:Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;

    .line 94
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->activity_nas_path_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 95
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->activity_nas_path_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 96
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->activity_nas_path_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-direct {v2, p0, v1}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 98
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->activity_nas_path_rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->nasDirectoryAdapter:Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_a

    goto :goto_d

    .line 239
    :cond_a
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->finish()V

    :goto_d
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 246
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 6

    .line 255
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    if-eqz p1, :cond_10

    .line 256
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->allDirectoryList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->setSaveDirectory(Ljava/lang/String;)V

    goto :goto_63

    .line 258
    :cond_10
    new-instance p1, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    invoke-direct {p1}, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;-><init>()V

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    .line 259
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->setActivate(I)V

    .line 260
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->setType(I)V

    .line 261
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->connectNasInfo:Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->setName(Ljava/lang/String;)V

    .line 262
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->setUploadGap(I)V

    .line 263
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->setStorageTime(I)V

    .line 264
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->allDirectoryList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->setSaveDirectory(Ljava/lang/String;)V

    .line 266
    :goto_63
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->setNasConfig()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 114
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onPause()V

    .line 115
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 116
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 105
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onResume()V

    .line 106
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 107
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0038

    .line 65
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 3

    .line 123
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpData(Landroid/os/Bundle;)V

    .line 124
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->center_title:Landroid/widget/TextView;

    const v0, 0x7f110272

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "connectNasInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->connectNasInfo:Ljava/util/Map;

    .line 126
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "nasConfigBean"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    .line 127
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    if-eqz p1, :cond_32

    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->isNew:Z

    .line 129
    :cond_32
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->getPath()V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 70
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpView()V

    .line 71
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->initView()V

    .line 72
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;->initEvent()V

    return-void
.end method
