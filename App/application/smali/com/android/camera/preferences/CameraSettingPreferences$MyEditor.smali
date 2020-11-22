.class Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;
.super Ljava/lang/Object;
.source "CameraSettingPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/preferences/CameraSettingPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyEditor"
.end annotation


# instance fields
.field private mEditorConfig:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

.field private mEditorGlobal:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

.field private mEditorRunning:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

.field final synthetic this$0:Lcom/android/camera/preferences/CameraSettingPreferences;


# direct methods
.method constructor <init>(Lcom/android/camera/preferences/CameraSettingPreferences;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->this$0:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    iput-object p1, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 120
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    iput-object p1, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorConfig:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 121
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    iput-object p1, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorRunning:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorConfig:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    if-eqz p0, :cond_1

    .line 137
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    :cond_1
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->clear()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 144
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorConfig:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->clear()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 145
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorRunning:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->clear()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-object p0
.end method

.method public commit()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->commit()Z

    move-result v0

    .line 127
    iget-object p0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorConfig:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->commit()Z

    move-result p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 207
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCameraSpecific(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorConfig:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    goto :goto_0

    .line 209
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isTransient(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorRunning:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :goto_0
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 195
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCameraSpecific(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorConfig:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putFloat(Ljava/lang/String;F)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    goto :goto_0

    .line 197
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isTransient(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorRunning:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putFloat(Ljava/lang/String;F)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putFloat(Ljava/lang/String;F)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :goto_0
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 171
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCameraSpecific(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorConfig:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    goto :goto_0

    .line 173
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isTransient(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorRunning:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :goto_0
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 183
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCameraSpecific(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorConfig:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    goto :goto_0

    .line 185
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isTransient(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorRunning:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :goto_0
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 159
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCameraSpecific(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorConfig:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isTransient(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorRunning:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :goto_0
    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 220
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 152
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorConfig:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 153
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorRunning:Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-object p0
.end method
