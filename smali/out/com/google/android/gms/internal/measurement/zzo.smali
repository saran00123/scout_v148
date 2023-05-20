.class public abstract Lcom/google/android/gms/internal/measurement/zzo;
.super Lcom/google/android/gms/internal/measurement/zzb;
.source "com.google.android.gms:play-services-measurement-base@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzp;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/zzp;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v1, :cond_11

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzp;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzn;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzn;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy"

    const-string v2, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_42c

    :pswitch_8
    const/4 v0, 0x0

    return v0

    .line 196
    :pswitch_a
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 3
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzo;->setConsentThirdParty(Landroid/os/Bundle;J)V

    goto/16 :goto_426

    :pswitch_1b
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 6
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzo;->setConsent(Landroid/os/Bundle;J)V

    goto/16 :goto_426

    .line 7
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzo;->clearMeasurementEnabled(J)V

    goto/16 :goto_426

    :pswitch_35
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzo;->setDefaultEventParameters(Landroid/os/Bundle;)V

    goto/16 :goto_426

    .line 11
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_49

    goto :goto_5a

    .line 12
    :cond_49
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 13
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzs;

    if-eqz v2, :cond_55

    .line 14
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzs;

    goto :goto_5a

    :cond_55
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzq;

    .line 15
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzq;-><init>(Landroid/os/IBinder;)V

    .line 16
    :goto_5a
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzo;->isDataCollectionEnabled(Lcom/google/android/gms/internal/measurement/zzs;)V

    goto/16 :goto_426

    .line 17
    :pswitch_5f
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzc;->zza(Landroid/os/Parcel;)Z

    move-result v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzo;->setDataCollectionEnabled(Z)V

    goto/16 :goto_426

    .line 19
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_6f

    goto :goto_80

    .line 20
    :cond_6f
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 21
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzs;

    if-eqz v3, :cond_7b

    .line 22
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzs;

    goto :goto_80

    :cond_7b
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzq;

    .line 23
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzq;-><init>(Landroid/os/IBinder;)V

    .line 24
    :goto_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 25
    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/internal/measurement/zzo;->getTestFlag(Lcom/google/android/gms/internal/measurement/zzs;I)V

    goto/16 :goto_426

    .line 26
    :pswitch_89
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzc;->zzf(Landroid/os/Parcel;)Ljava/util/HashMap;

    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzo;->initForTests(Ljava/util/Map;)V

    goto/16 :goto_426

    .line 28
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_99

    goto :goto_aa

    .line 29
    :cond_99
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 30
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzv;

    if-eqz v2, :cond_a5

    .line 31
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzv;

    goto :goto_aa

    :cond_a5
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzt;

    .line 32
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzt;-><init>(Landroid/os/IBinder;)V

    .line 33
    :goto_aa
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzo;->unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzv;)V

    goto/16 :goto_426

    .line 34
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_b6

    goto :goto_c7

    .line 35
    :cond_b6
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 36
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzv;

    if-eqz v2, :cond_c2

    .line 37
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzv;

    goto :goto_c7

    :cond_c2
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzt;

    .line 38
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzt;-><init>(Landroid/os/IBinder;)V

    .line 39
    :goto_c7
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzo;->registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzv;)V

    goto/16 :goto_426

    .line 40
    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_d3

    goto :goto_e4

    .line 41
    :cond_d3
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 42
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzv;

    if-eqz v2, :cond_df

    .line 43
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzv;

    goto :goto_e4

    :cond_df
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzt;

    .line 44
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzt;-><init>(Landroid/os/IBinder;)V

    .line 45
    :goto_e4
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzo;->setEventInterceptor(Lcom/google/android/gms/internal/measurement/zzv;)V

    goto/16 :goto_426

    .line 46
    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    move-object v0, p0

    .line 51
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzo;->logHealthData(ILjava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto/16 :goto_426

    :pswitch_10f
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 52
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_11e

    goto :goto_12f

    .line 54
    :cond_11e
    invoke-interface {v4, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 55
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzs;

    if-eqz v3, :cond_12a

    .line 56
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzs;

    goto :goto_12f

    :cond_12a
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzq;

    .line 57
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/measurement/zzq;-><init>(Landroid/os/IBinder;)V

    .line 58
    :goto_12f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 59
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzo;->performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzs;J)V

    goto/16 :goto_426

    .line 60
    :pswitch_138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_147

    goto :goto_158

    .line 62
    :cond_147
    invoke-interface {v4, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 63
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzs;

    if-eqz v3, :cond_153

    .line 64
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzs;

    goto :goto_158

    :cond_153
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzq;

    .line 65
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/measurement/zzq;-><init>(Landroid/os/IBinder;)V

    .line 66
    :goto_158
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 67
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzo;->onActivitySaveInstanceState(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzs;J)V

    goto/16 :goto_426

    .line 68
    :pswitch_161
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 70
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzo;->onActivityResumed(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_426

    .line 71
    :pswitch_172
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 73
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzo;->onActivityPaused(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_426

    .line 74
    :pswitch_183
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 76
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzo;->onActivityDestroyed(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_426

    .line 77
    :pswitch_194
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 78
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 80
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzo;->onActivityCreated(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/os/Bundle;J)V

    goto/16 :goto_426

    .line 81
    :pswitch_1ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 83
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzo;->onActivityStopped(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_426

    .line 84
    :pswitch_1be
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 86
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzo;->onActivityStarted(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_426

    .line 87
    :pswitch_1cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 89
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzo;->endAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_426

    .line 90
    :pswitch_1dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 92
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzo;->beginAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_426

    .line 93
    :pswitch_1e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1f0

    goto :goto_201

    .line 94
    :cond_1f0
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 95
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzs;

    if-eqz v2, :cond_1fc

    .line 96
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzs;

    goto :goto_201

    :cond_1fc
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzq;

    .line 97
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzq;-><init>(Landroid/os/IBinder;)V

    .line 98
    :goto_201
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzo;->generateEventId(Lcom/google/android/gms/internal/measurement/zzs;)V

    goto/16 :goto_426

    .line 99
    :pswitch_206
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_20d

    goto :goto_21e

    .line 100
    :cond_20d
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 101
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzs;

    if-eqz v2, :cond_219

    .line 102
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzs;

    goto :goto_21e

    :cond_219
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzq;

    .line 103
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzq;-><init>(Landroid/os/IBinder;)V

    .line 104
    :goto_21e
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzo;->getGmpAppId(Lcom/google/android/gms/internal/measurement/zzs;)V

    goto/16 :goto_426

    .line 105
    :pswitch_223
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_22a

    goto :goto_23b

    .line 106
    :cond_22a
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 107
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzs;

    if-eqz v2, :cond_236

    .line 108
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzs;

    goto :goto_23b

    :cond_236
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzq;

    .line 109
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzq;-><init>(Landroid/os/IBinder;)V

    .line 110
    :goto_23b
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzo;->getAppInstanceId(Lcom/google/android/gms/internal/measurement/zzs;)V

    goto/16 :goto_426

    .line 111
    :pswitch_240
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_247

    goto :goto_258

    .line 112
    :cond_247
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 113
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzs;

    if-eqz v2, :cond_253

    .line 114
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzs;

    goto :goto_258

    :cond_253
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzq;

    .line 115
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzq;-><init>(Landroid/os/IBinder;)V

    .line 116
    :goto_258
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzo;->getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/zzs;)V

    goto/16 :goto_426

    .line 117
    :pswitch_25d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_264

    goto :goto_277

    :cond_264
    const-string v1, "com.google.android.gms.measurement.api.internal.IStringProvider"

    .line 118
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 119
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzx;

    if-eqz v2, :cond_272

    .line 120
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzx;

    goto :goto_277

    :cond_272
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzw;

    .line 121
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzw;-><init>(Landroid/os/IBinder;)V

    .line 122
    :goto_277
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzo;->setInstanceIdProvider(Lcom/google/android/gms/internal/measurement/zzx;)V

    goto/16 :goto_426

    .line 123
    :pswitch_27c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_283

    goto :goto_294

    .line 124
    :cond_283
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 125
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzs;

    if-eqz v2, :cond_28f

    .line 126
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzs;

    goto :goto_294

    :cond_28f
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzq;

    .line 127
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzq;-><init>(Landroid/os/IBinder;)V

    .line 128
    :goto_294
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzo;->getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/zzs;)V

    goto/16 :goto_426

    .line 129
    :pswitch_299
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2a0

    goto :goto_2b1

    .line 130
    :cond_2a0
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 131
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzs;

    if-eqz v2, :cond_2ac

    .line 132
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzs;

    goto :goto_2b1

    :cond_2ac
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzq;

    .line 133
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzq;-><init>(Landroid/os/IBinder;)V

    .line 134
    :goto_2b1
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzo;->getCurrentScreenName(Lcom/google/android/gms/internal/measurement/zzs;)V

    goto/16 :goto_426

    .line 135
    :pswitch_2b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    .line 139
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzo;->setCurrentScreen(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_426

    .line 140
    :pswitch_2d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 141
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzo;->setSessionTimeoutDuration(J)V

    goto/16 :goto_426

    .line 142
    :pswitch_2d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 143
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzo;->setMinimumSessionDuration(J)V

    goto/16 :goto_426

    .line 144
    :pswitch_2e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 145
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzo;->resetAnalyticsData(J)V

    goto/16 :goto_426

    .line 146
    :pswitch_2eb
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzc;->zza(Landroid/os/Parcel;)Z

    move-result v1

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 148
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzo;->setMeasurementEnabled(ZJ)V

    goto/16 :goto_426

    .line 149
    :pswitch_2f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_307

    goto :goto_318

    .line 152
    :cond_307
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 153
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzs;

    if-eqz v3, :cond_313

    .line 154
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzs;

    goto :goto_318

    :cond_313
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzq;

    .line 155
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzq;-><init>(Landroid/os/IBinder;)V

    .line 156
    :goto_318
    invoke-virtual {p0, v1, v4, v3}, Lcom/google/android/gms/internal/measurement/zzo;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzs;)V

    goto/16 :goto_426

    .line 157
    :pswitch_31d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 159
    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 160
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzo;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_426

    :pswitch_332
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 161
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 163
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzo;->setConditionalUserProperty(Landroid/os/Bundle;J)V

    goto/16 :goto_426

    .line 164
    :pswitch_343
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 166
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzo;->setUserId(Ljava/lang/String;J)V

    goto/16 :goto_426

    .line 167
    :pswitch_350
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_35b

    goto :goto_36c

    .line 169
    :cond_35b
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 170
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzs;

    if-eqz v3, :cond_367

    .line 171
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzs;

    goto :goto_36c

    :cond_367
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzq;

    .line 172
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzq;-><init>(Landroid/os/IBinder;)V

    .line 173
    :goto_36c
    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzo;->getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzs;)V

    goto/16 :goto_426

    .line 174
    :pswitch_371
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzc;->zza(Landroid/os/Parcel;)Z

    move-result v5

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_384

    goto :goto_395

    .line 178
    :cond_384
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 179
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzs;

    if-eqz v3, :cond_390

    .line 180
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzs;

    goto :goto_395

    :cond_390
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzq;

    .line 181
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzq;-><init>(Landroid/os/IBinder;)V

    .line 182
    :goto_395
    invoke-virtual {p0, v1, v4, v5, v3}, Lcom/google/android/gms/internal/measurement/zzo;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/zzs;)V

    goto/16 :goto_426

    .line 183
    :pswitch_39a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    .line 186
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzc;->zza(Landroid/os/Parcel;)Z

    move-result v4

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    move-object v0, p0

    .line 188
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzo;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;ZJ)V

    goto/16 :goto_426

    .line 189
    :pswitch_3b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 191
    invoke-static {p2, v5}, Lcom/google/android/gms/internal/measurement/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_3d0

    move-object v6, v3

    goto :goto_3e1

    .line 193
    :cond_3d0
    invoke-interface {v6, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 194
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzs;

    if-eqz v3, :cond_3db

    .line 195
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzs;

    goto :goto_3e0

    :cond_3db
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzq;

    .line 196
    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/measurement/zzq;-><init>(Landroid/os/IBinder;)V

    :goto_3e0
    move-object v6, v2

    .line 197
    :goto_3e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    move-object v0, p0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-wide v5, v8

    .line 198
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzo;->logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzs;J)V

    goto :goto_426

    .line 199
    :pswitch_3ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 201
    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 202
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzc;->zza(Landroid/os/Parcel;)Z

    move-result v4

    .line 203
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzc;->zza(Landroid/os/Parcel;)Z

    move-result v5

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v0, p0

    .line 205
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzo;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    goto :goto_426

    .line 206
    :pswitch_40f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 207
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzy;

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 209
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzo;->initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzy;J)V

    .line 210
    :goto_426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_42c
    .packed-switch 0x1
        :pswitch_40f
        :pswitch_3ee
        :pswitch_3b8
        :pswitch_39a
        :pswitch_371
        :pswitch_350
        :pswitch_343
        :pswitch_332
        :pswitch_31d
        :pswitch_2f8
        :pswitch_2eb
        :pswitch_2e2
        :pswitch_2d9
        :pswitch_2d0
        :pswitch_2b6
        :pswitch_299
        :pswitch_27c
        :pswitch_25d
        :pswitch_240
        :pswitch_223
        :pswitch_206
        :pswitch_1e9
        :pswitch_1dc
        :pswitch_1cf
        :pswitch_1be
        :pswitch_1ad
        :pswitch_194
        :pswitch_183
        :pswitch_172
        :pswitch_161
        :pswitch_138
        :pswitch_10f
        :pswitch_e9
        :pswitch_cc
        :pswitch_af
        :pswitch_92
        :pswitch_89
        :pswitch_68
        :pswitch_5f
        :pswitch_42
        :pswitch_8
        :pswitch_35
        :pswitch_2c
        :pswitch_1b
        :pswitch_a
    .end packed-switch
.end method
