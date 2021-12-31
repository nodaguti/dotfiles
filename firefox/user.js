//最後のタブを閉じてもウィンドウを閉じない
user_pref("browser.tabs.closeWindowWithLastTab", false);

//閉じたタブの履歴を30件に
user_pref("browser.sessionstore.max_tabs_undo", 30);

// 常にタブバーを表示する
user_pref("browser.tabs.autoHide", false);

//タブが小さくなっても閉じるボタンを消さない
user_pref("browser.tabs.tabClipWidth", 0);

//ダウンロードウィンドウを表示しない
user_pref("browser.download.manager.showWhenStarting", false);

//ダウンロードが終了したときにリストから削除
user_pref("browser.download.manager.retention", 0);

//ダウンロード完了時にスキャンしない
user_pref("browser.download.manager.scanWhenDone", false);

//ソースウィンドウでコードを折り返す
user_pref("view_source.wrap_long_lines", true);

//アドオンインストール時の待ち時間を無くす
user_pref("security.dialog_enable_delay", 0);

//ステータスバーを変更させない
user_pref("dom.disable_window_status_change", true);

///ステータスバーなどを常に表示させる
user_pref("dom.disable_window_open_feature.location", true);
user_pref("dom.disable_window_open_feature.menubar", true);
user_pref("dom.disable_window_open_feature.minimizable", true);
user_pref("dom.disable_window_open_feature.resizable", true);
user_pref("dom.disable_window_open_feature.scrollbars", true);
user_pref("dom.disable_window_open_feature.titlebar", true);
user_pref("dom.disable_window_open_feature.toolbar", true);
user_pref("dom.disable_window_open_feature.status", true);

//resize, remove, focusを無効にする
user_pref("dom.disable_window_move_resize", true);
user_pref("dom.disable_window_flip", true);

//複数のタブを閉じるときに警告しない
user_pref("browser.tabs.warnOnClose", false);

//アドレスバーを選択したとき、urlを選択状態にしない
user_pref("browser.urlbar.clickSelectsAll", false);

//更新が見つかったときに自動でアップデートする
user_pref("app.update.auto", true);

//フレームを常にリサイズできるように
user_pref("layout.frames.force_resizability", true);

//右クリック禁止を無効化
user_pref("nglayout.events.dispatchLeftClickOnly", true);
user_pref("dom.event.contextmenu.enabled", true);

//点滅するテキストを無効化
user_pref("browser.blink_allowed", false);

//about:configを表示させるときに警告を出さない
user_pref("general.warnOnAboutConfig", false);

//mailtoスキームを無効化する
user_pref("network.protocol-handler.external.mailto", false);

//window.open(); _blankも新しいタブで開く
user_pref("browser.link.open_newwindow", 3);
user_pref("browser.link.open_newwindow.restriction", 0);

//外部アプリからリンクを開いた場合にFirefoxを前面にする
user_pref("browser.tabs.loadDivertedInBackground", false);

//外部アプリからリンクを開いた場合に新しいタブに開く
user_pref("browser.link.open_external", 3);

// スクロールする行数の単位を決めるのにシステムのプロパティを使用するか
user_pref("mousewheel.withnokey.sysnumlines", false);

//「Firefoxにようこそ」を表示しない
user_pref("browser.startup.homepage_override.mstone", "ignore");

//「あなたの権利」を表示しない
user_pref("browser.rights.3.shown", true);

//規定のブラウザにするかどうか表示しない
user_pref("browser.shell.checkDefaultBrowser", false);

//ツールチップを表示する
user_pref("browser.chrome.toolbar_tips", true);

//preferencesをタブで表示する
user_pref("browser.preferences.inContent", true);
user_pref("browser.preferences.instantApply", true);

//ロケーションバーの自動補完を無効化する
user_pref("browser.urlbar.autoFill", false);
user_pref("browser.urlbar.autoFill.typed", false);

//英語表示にする
user_pref("general.useragent.locale", "en-US");

//フォントは日本語にする
user_pref("font.language.group", "ja");

//アップデートの確認を5時間ごとにする
user_pref("extensions.update.interval", 18000);
user_pref("app.update.interval", 18000);

//デフォルトエンコーディングをunicodeにする
user_pref("intl.charset.default", "UTF-8");


//=============Security===============

// Click to play
user_pref("plugins.click_to_play", true);

// Always ignore autocomplete=off
user_pref("signon.overrideAutocomplete", true);

// Disable rc4
user_pref('security.ssl3.ecdhe_ecdsa_rc4_128_sha', false);
user_pref('security.ssl3.ecdhe_rsa_rc4_128_sha', false);
user_pref('security.ssl3.rsa_rc4_128_md5', false);
user_pref('security.ssl3.rsa_rc4_128_sha', false);

// Strict Plugin Sandbox
user_pref('dom.ipc.plugins.moreStrictSandbox', true);

// Block Mixed Active content
user_pref('security.mixed_content.block_active_content', true);

// Block Mixed Passive content
user_pref('security.mixed_content.block_display_content', true);

// Disable Add-ons Signature Validation
//user_pref('xpinstall.signatures.required', false);

// Disable Add-ons Whitelist
user_pref("xpinstall.whitelist.required", false);

// SVG
// user_pref('svg.disabled', true);

// MathML
user_pref('mathml.disabled', true);

// Block remote Jar files
user_pref('network.jar.block-remote-files', true);

// Disable SSL session identifier
user_pref('security.ssl.disable_session_identifiers', true);

user_pref('ui.use_standins_for_native_colors', true);


//============= Privacy =============

// Disable Health Report/Telemetry
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("toolkit.telemetry.rejected", true);
user_pref("toolkit.telemetry.notifiedOptOut", 2);
user_pref("toolkit.telemetry.prompted", 2);

//全てのクッキーを不許可に
//user_pref("network.cookie.cookieBehavior", 2);

// Delete all cookies on shutdown
user_pref("network.cookie.lifetimePolicy", 2);

// Disable Geolocation API
user_pref("geo.enabled", false);

// Enable Prefetch
user_pref("network.prefetch-next", true);
user_pref('network.dns.disablePrefetch', false);

// Tracking Protection
user_pref("privacy.trackingprotection.ui.enabled", true);
user_pref("privacy.trackingprotection.enabled", true);

// Fingerprint Resistance
user_pref("privacy.resistFingerprinting", true);

// Normalise Accept Languages
user_pref("general.useragent.locale", "en-US");
user_pref("intl.accept_languages", "en-us,en");


//=====その他=====

// Skip delays in submenus
user_pref("ui.submenuDelay", 0);

// Disable tab animations
user_pref('browser.tabs.animate', false);
user_pref('browser.panorama.animate_zoom', false);

// プラグインの完全な位置を表示
user_pref("plugin.expose_full_path", true);

// Hide image placeholders
user_pref("browser.display.show_image_placeholders", false);

// Plugin Async Init
user_pref("dom.ipc.plugins.asyncInit", true);
user_pref('dom.ipc.plugins.asyncInit.enabled', true);

// On-demand loading of pinned tabs
user_pref('browser.sessionstore.restore_pinned_tabs_on_demand', true);

// Enable browser console
user_pref("devtools.chrome.enabled", true);
user_pref("devtools.debugger.remote-enabled", true);

// Disable Developer Edition-specific customisations
user_pref('browser.devedition.theme.enabled', false);
user_pref('browser.devedition.theme.showCustomizeButton', false);
user_pref('devtools.theme', 'light');
user_pref('identity.fxaccounts.migrateToDevEdition', false);
