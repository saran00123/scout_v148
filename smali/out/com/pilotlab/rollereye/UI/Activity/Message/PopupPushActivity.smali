.class public Lcom/pilotlab/rollereye/UI/Activity/Message/PopupPushActivity;
.super Lcom/alibaba/sdk/android/push/AndroidPopupActivity;
.source "PopupPushActivity.java"


# static fields
.field static final TAG:Ljava/lang/String; = "PopupPushActivity"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/AndroidPopupActivity;-><init>()V

    return-void
.end method

.method private initData()V
    .registers 15

    const-string v0, "size"

    .line 33
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/PopupPushActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    .line 35
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "summary"

    .line 37
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "extraMap"

    .line 39
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c6

    .line 44
    :try_start_1a
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    .line 47
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "type"

    .line 49
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v3, ""
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_3d} :catch_c2

    const/4 v4, 0x1

    const/4 v8, 0x0

    const-string v10, "url"

    const-string v11, "thumbUrl"

    if-ne v9, v4, :cond_74

    .line 52
    :try_start_45
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4a} :catch_c2

    .line 54
    :try_start_4a
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/pilotlab/rollereye/Common/ServerConstent;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception v12

    .line 56
    :try_start_54
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    :goto_57
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/pilotlab/rollereye/Common/ServerConstent;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 59
    invoke-virtual {v3, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v8

    move-object v8, v0

    move-object v0, v13

    goto :goto_77

    :cond_74
    move-object v0, v8

    move-object v12, v0

    move-object v8, v3

    .line 65
    :goto_77
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    if-eq v9, v4, :cond_8e

    const/4 v3, 0x2

    if-ne v9, v3, :cond_82

    goto :goto_8e

    .line 82
    :cond_82
    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Message/PopupPushActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/PopupPushActivity;->finish()V

    goto :goto_c6

    .line 67
    :cond_8e
    :goto_8e
    new-instance v3, Lcom/pilotlab/rollereye/DataBase/MessageHelper;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;-><init>(Landroid/content/Context;)V

    move-object v4, v1

    invoke-virtual/range {v3 .. v9}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->InsertReadMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    new-instance v3, Lcom/pilotlab/rollereye/DataBase/MessageHelper;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->updateMessageStatus(Ljava/lang/String;)V

    if-eqz v0, :cond_b3

    .line 70
    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;

    invoke-virtual {v2, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 71
    invoke-virtual {v2, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Message/PopupPushActivity;->startActivity(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/PopupPushActivity;->finish()V

    goto :goto_c6

    .line 76
    :cond_b3
    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 77
    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Message/PopupPushActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/PopupPushActivity;->finish()V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_c1} :catch_c2

    goto :goto_c6

    :catch_c2
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c6
    :goto_c6
    return-void
.end method


# virtual methods
.method public fullScreen()V
    .registers 3

    .line 169
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/PopupPushActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 25
    invoke-super {p0, p1}, Lcom/alibaba/sdk/android/push/AndroidPopupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/PopupPushActivity;->fullScreen()V

    const p1, 0x7f0d0040

    .line 27
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/PopupPushActivity;->setContentView(I)V

    .line 28
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/PopupPushActivity;->initData()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 96
    invoke-super {p0}, Lcom/alibaba/sdk/android/push/AndroidPopupActivity;->onResume()V

    .line 97
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/PopupPushActivity;->fullScreen()V

    return-void
.end method

.method protected onSysNoticeOpened(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v2, p3

    const-string v3, "size"

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive notification, title: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", summary: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p2

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", extraMap: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "PopupPushActivity"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "id"

    .line 118
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 120
    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4e
    const-string v0, "type"

    .line 124
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5a} :catch_5b

    goto :goto_60

    :catch_5b
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    :goto_60
    move v11, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v13, "url"

    const-string v14, "thumbUrl"

    if-ne v11, v5, :cond_a1

    .line 133
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 135
    :try_start_6e
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Common/ServerConstent;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_78} :catch_92

    .line 136
    :try_start_78
    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Common/ServerConstent;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 137
    invoke-virtual {v7, v13, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    invoke-virtual {v7, v14, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_8f} :catch_90

    goto :goto_97

    :catch_90
    move-exception v0

    goto :goto_94

    :catch_92
    move-exception v0

    move-object v10, v6

    .line 141
    :goto_94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_97
    move-object v0, v6

    move-object v6, v10

    .line 143
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_a6

    :cond_a1
    const-string v0, ""

    move-object v10, v0

    move-object v0, v6

    move-object v2, v0

    .line 145
    :goto_a6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    if-eq v11, v5, :cond_bd

    const/4 v5, 0x2

    if-ne v11, v5, :cond_b1

    goto :goto_bd

    .line 162
    :cond_b1
    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Message/PopupPushActivity;->startActivity(Landroid/content/Intent;)V

    .line 164
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/PopupPushActivity;->finish()V

    goto :goto_f4

    .line 147
    :cond_bd
    :goto_bd
    new-instance v5, Lcom/pilotlab/rollereye/DataBase/MessageHelper;

    invoke-direct {v5, p0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;-><init>(Landroid/content/Context;)V

    move-object v6, v12

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {v5 .. v11}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->InsertReadMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    new-instance v4, Lcom/pilotlab/rollereye/DataBase/MessageHelper;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v12}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->updateMessageStatus(Ljava/lang/String;)V

    if-eqz v0, :cond_e6

    .line 150
    const-class v4, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 151
    invoke-virtual {v3, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {v3, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Message/PopupPushActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/PopupPushActivity;->finish()V

    goto :goto_f4

    .line 156
    :cond_e6
    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 157
    invoke-virtual {v3, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Message/PopupPushActivity;->startActivity(Landroid/content/Intent;)V

    .line 159
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/PopupPushActivity;->finish()V

    :goto_f4
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 102
    invoke-super {p0, p1}, Lcom/alibaba/sdk/android/push/AndroidPopupActivity;->onWindowFocusChanged(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/PopupPushActivity;->fullScreen()V

    return-void
.end method
