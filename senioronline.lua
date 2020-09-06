-- -- -- -- -- -- -- -- -- --   S p l i T   -- -- -- -- -- -- -- -- -- --

function split(szFullString, szSeparator)
	local nFindStartIndex = 1
	local nSplitIndex = 1
	local nSplitArray = {}
	while true do
		local nFindLastIndex = string.find(
			szFullString,
			szSeparator,
			nFindStartIndex
		)
		if not nFindLastIndex then
			nSplitArray[nSplitIndex] = string.sub(
				szFullString,
				nFindStartIndex,
				string.len(szFullString)
			)
			break
		end
		nSplitArray[nSplitIndex] = string.sub(
			szFullString,
			nFindStartIndex,
			nFindLastIndex - 1
		)
		nFindStartIndex = nFindLastIndex + string.len(szSeparator)
		nSplitIndex = nSplitIndex + 1
	end
	return nSplitArray
end
function xgxc(szpy, qmxg)
	for x = 1, #(qmxg) do
		xgpy = szpy + qmxg[x]["offset"]
		xglx = qmxg[x]["type"]
		xgsz = qmxg[x]["value"]
		gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}})
		xgsl = xgsl + 1
	end
end
function xqmnb(SeniorMo7)
	gg.clearResults()
	gg.setRanges(SeniorMo7[1]["memory"])
	gg.searchNumber(SeniorMo7[3]["value"], SeniorMo7[3]["type"])
	if gg.getResultCount() == 0 then
		gg.toast(SeniorMo7[2]["name"] .. "فشل التفعيل")
	else
		gg.refineNumber(SeniorMo7[3]["value"], SeniorMo7[3]["type"])
		gg.refineNumber(SeniorMo7[3]["value"], SeniorMo7[3]["type"])
		gg.refineNumber(SeniorMo7[3]["value"], SeniorMo7[3]["type"])
		if gg.getResultCount() == 0 then
			gg.toast(SeniorMo7[2]["name"] .. "فشل التفعيل")
		else
			sl = gg.getResults(999999)
			sz = gg.getResultCount()
			xgsl = 0
			if sz > 999999 then
				sz = 999999
			end
			for i = 1, sz do
				pdsz = true
				for v = 4, #(SeniorMo7) do
					if pdsz == true then
						pysz = {}
						pysz[1] = {}
						pysz[1].address = sl[i].address + SeniorMo7[v]["offset"]
						pysz[1].flags = SeniorMo7[v]["type"]
						szpy = gg.getValues(pysz)
						pdpd = SeniorMo7[v]["lv"] .. ";" .. szpy[1].value
						szpd = split(pdpd, ";")
						tzszpd = szpd[1]
						pyszpd = szpd[2]
						if tzszpd == pyszpd then
							pdjg = true
							pdsz = true
						else
							pdjg = false
							pdsz = false
						end
					end
				end
				if pdjg == true then
					szpy = sl[i].address
					xgxc(szpy, qmxg)
					xgjg = true
				end
			end
			if xgjg == true then
				gg.toast(SeniorMo7[2]["name"] .. "Modified " .. xgsl .. " Values🔍")
			else
				gg.toast(SeniorMo7[2]["name"] .. "فشل التفعيل")
			end
		end
	end
end

-- -- -- -- -- -- -- -- -- --  Check Files  -- -- -- -- -- -- -- -- -- --

DATA = io.open("/storage/emulated/0/Pictures/plus.dat", "rb")
DATATWO = io.open("/storage/emulated/0/Pictures/moe.dat", "rb")

if DATA==nil or DATATWO==nil then
gg.alert("Please Start The Antiban First ❗\n\nلفتح السكربت قم بتشغيل الحماية اولاً ❗")
os.exit()
end

local PKGNAME = DATA:read()
local ANDID = DATATWO:read()

-- -- -- -- -- -- -- -- -- --  Check Package  -- -- -- -- -- -- -- -- -- -- --

First=gg.isPackageInstalled("com.senior.antiban") if First==false then gg.alert("⛔️ !! السكربت لمشتركين سنيور فقط  !! ⛔️") os.exit() end

-- -- -- -- -- -- -- -- -- -- Script Language -- -- -- -- -- -- -- -- -- --

HOME1 = 1
BYPDONE = 0
CMENU = 0
function HOME()
LANGHOME = gg.alert("🌐 اختر لغة السكربت \n🇬🇧 Select your language  ", "⟬ عربي 🌐 ⟭", "⟬ 🇬🇧 English ⟭")
if LANGHOME == nil then
else
if LANGHOME == 1 then
HOME1()
CMENU = 1
end
if LANGHOME == 2 then
HOME2()
CMENU = 2
end
end
PUBGMH = -1
end

-- -- -- -- -- -- -- -- -- -- Home Page -- -- -- -- -- -- -- -- -- --

function HOME1()
MN = gg.choice({
"🛡️ 『  انتي باند / حماية لوبي 』",
"📂 『  قائمة الول هاك والألوان 』",
"📂 『  قائمة تفعيلات اللوبي 』",
"📂 『 قائمة التفعيلات داخل القيم 』",
"⚠️ 『 قائمة الخصائص الغير آمنة 🔥』",
"🚀 『 قفزة / طيران الجيب 』",
"🚗 『 قفزة / طيران الداسيا 』",
"🛰️ 『 ترسيت سريع / ᴏɴ - ᴏғғ 』",
"⛔ 『 خروج 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if MN == nil then else
if MN == 1 then ABAN() end
if MN == 2 then BDY() end
if MN == 3 then INLOOBY() end
if MN == 4 then INGAME() end
if MN == 5 then NOTSAFE() end
if MN == 6 then JEEPJUMP() end
if MN == 7 then DACIAJUMP() end
if MN == 8 then DATAONOFF() end
if MN == 9 then CLOSE() end
end
PUBGMH = -1
end

function HOME2()
MN2 = gg.choice({
"🛡️ 『 ᴀɴᴛɪʙᴀɴ / ɪɴ ʟᴏᴏʙʏ 』",
"📂 『 ᴡᴀʟʟʜᴀᴄᴋ & ʙᴏᴅʏ ᴄᴏʟᴏʀ 』",
"📂 『 ɪɴ ʟᴏᴏʙʏ ᴍᴇɴᴜ 』",
"📂 『 ɪɴ ɢᴀᴍᴇ ᴍᴇɴᴜ 』",
"⚠️ 『 ɴᴏᴛ sᴀғᴇ ᴍᴇɴᴜ  💥 』",
"🚀 『 ᴊᴇᴇᴘ ᴊᴜᴍᴘɪɴɢ 』",
"🚗 『 ᴅᴀᴄɪᴀ ᴊᴜᴍᴘɪɴɢ 』",
"🛰️ 『 ᴅᴀᴛᴀ ᴏɴ - ᴏғғ ғᴀsᴛ 』",
"⛔ 『 ᴇ x ɪ ᴛ 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if MN2 == nil then else
if MN2 == 1 then ABAN2() end
if MN2 == 2 then BDY2() end
if MN2 == 3 then INLOOBY2() end
if MN2 == 4 then INGAME2() end
if MN2 == 5 then NOTSAFE2() end
if MN2 == 6 then JEEPJUMP() end
if MN2 == 7 then DACIAJUMP() end
if MN2 == 8 then DATAONOFF() end
if MN2 == 9 then CLOSE() end
end
PUBGMH = -1
end


-- -- -- -- -- -- -- -- --   Fast Data ON/OFF   -- -- -- -- -- -- -- -- --

function DATAONOFF()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1.3132476e-38;1.956023e-35;1.1754945e-37::9", 16, false, 536870912, 0, -1)
gg.searchNumber("1.1754945e-37", 16, false, 536870912, 0, -1)
gg.getResults(21)
gg.editAll("1001001", 16)
gg.toast("📵 ɪɴᴛᴇʀɴᴇᴛ ᴅɪsᴄᴏɴɴᴇᴄᴛᴇᴅ 📵")
gg.sleep("3500")
gg.editAll("1.1754945e-37", 16)
gg.clearResults()
gg.toast("✅ ɪɴᴛᴇʀɴᴇᴛ ᴄᴏɴɴᴇᴄᴛᴇᴅ ✅")
end

-- -- -- -- -- -- -- -- --   Freeze Memory   -- -- -- -- -- -- -- -- --

function ABAN()
TENMINMN = gg.choice({
"⚙️⁩ 『 حماية لوبي للنسخة العالمية ᴠ1 ( لوبي ) 🛡️⁩』",
"⚙️⁩ 『 حماية لوبي للنسخة العالمية ᴠ2 ( لوبي ) 🛡️⁩』",
"⚙️⁩ 『 حماية لوبي للنسخة الكورية ᴠ1 ( لوبي ) 🇰🇷 』",
"⚙️⁩ 『 حماية لوبي للنسخة الكورية ᴠ2 ( لوبي ) 🇰🇷 』",
"⁦➡️⁩ 『 رجوع 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if TENMINMN == nil then else
if TENMINMN == 1 then AABANGL1() end
if TENMINMN == 2 then AABANGL2() end
if TENMINMN == 3 then AABANKR1() end
if TENMINMN == 4 then AABANKR2() end
if TENMINMN == 5 then HOME1() end
end
PUBGMH = -1
end

function ABAN2()
TENMIN2MN = gg.choice({
"⚙️⁩ 『 ᴀɴᴛɪʙᴀɴ ɢʟᴏʙᴀʟ ᴠᴇʀsɪᴏɴ ᴠ1 ( ʟᴏᴏʙʏ ) 』",
"⚙️⁩ 『 ᴀɴᴛɪʙᴀɴ ɢʟᴏʙᴀʟ ᴠᴇʀsɪᴏɴ ᴠ2 ( ʟᴏᴏʙʏ ) 』",
"⚙️⁩ 『 ᴀɴᴛɪʙᴀɴ ᴋᴏʀᴇᴀɴ ᴠᴇʀsɪᴏɴ ᴠ2 ( ʟᴏᴏʙʏ ) 🇰🇷 』",
"⚙️⁩ 『 ᴀɴᴛɪʙᴀɴ ᴋᴏʀᴇᴀɴ ᴠᴇʀsɪᴏɴ ᴠ2 ( ʟᴏᴏʙʏ ) 🇰🇷 』",
"⬅️ 『 ʙ ᴀ ᴄ ᴋ 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if TENMIN2MN == nil then else
if TENMIN2MN == 1 then AABANGL1() end
if TENMIN2MN == 2 then AABANGL2() end
if TENMIN2MN == 3 then AABANKR1() end
if TENMIN2MN == 4 then AABANKR2() end
if TENMIN2MN == 5 then HOME2() end
end
PUBGMH = -1
end

function AABANGL1()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("Failed Restart Game And Try , لم يتم التفعيل !! ❌")
gg.setVisible(true)
gg.processKill()
os.exit()
else
gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
resultsCount = gg.getResultCount()
results = gg.getResults(resultsCount)
for i = 1, resultsCount do
      gg.addListItems({
        [1] = {
          address = results[i].address + 48,
          flags = 4,
          freeze = true,
          value = 119
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 64,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 68,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 100,
          flags = 4,
          freeze = true,
          value = 4451
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 512,
          flags = 4,
          freeze = true,
          value = 0
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 540,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 544,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 548,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address - 252,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address - 236,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address - 232,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address - 72,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address - 68,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address - 64,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 48,
          flags = 4,
          freeze = true,
          value = 119
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 64,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 68,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 100,
          flags = 4,
          freeze = true,
          value = 4451
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 512,
          flags = 4,
          freeze = true,
          value = 0
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 540,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 544,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 548,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 30,
          flags = 4,
          freeze = true,
          value = 119
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 130,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 180,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 200,
          flags = 4,
          freeze = true,
          value = 4451
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 300,
          flags = 4,
          freeze = true,
          value = 0
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 310,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 360,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 450,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 650,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 800,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address - 252,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address - 236,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address - 232,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address - 72,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address - 68,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address - 64,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 30,
          flags = 4,
          freeze = true,
          value = 119
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 130,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 180,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 200,
          flags = 4,
          freeze = true,
          value = 4451
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 300,
          flags = 4,
          freeze = true,
          value = 0
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 310,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 360,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 450,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 650,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = results[i].address + 800,
          flags = 4,
          freeze = true,
          value = -1
        }
})
gg.clearResults()
end
end
gg.clearResults()
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
gg.alert("تم تفعيل الحماية ✅")
end

function AABANGL2()
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("Failed Restart Game And Try , لم يتم التفعيل !! ❌")
gg.setVisible(true)
gg.processKill()
os.exit()
else
    gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    resultsCount = gg.getResultCount()
    results = gg.getResults(resultsCount)
    for i = 1, resultsCount do
      gg.addListItems({
        [1] = {
          address = results[i].address - 252,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
	        gg.addListItems({
        [1] = {
          address = results[i].address - 236,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
	        gg.addListItems({
        [1] = {
          address = results[i].address - 232,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
	        gg.addListItems({
        [1] = {
          address = results[i].address - 72,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
	        gg.addListItems({
        [1] = {
          address = results[i].address - 68,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
	        gg.addListItems({
        [1] = {
          address = results[i].address - 64,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
	        gg.addListItems({
        [1] = {
          address = results[i].address + 44,
          flags = 4,
          freeze = true,
          value = 119
        }
      })
	        gg.addListItems({
        [1] = {
          address = results[i].address + 48,
          flags = 4,
          freeze = true,
          value = 70035
        }
      })
	        gg.addListItems({
        [1] = {
          address = results[i].address +52 ,
          flags = 4,
          freeze = true,
          value = 65537
        }
      })
	        gg.addListItems({
        [1] = {
          address = results[i].address + 62,
          flags = 4,
          freeze = true,
          value = 70039
        }
      })
	        gg.addListItems({
        [1] = {
          address = results[i].address + 64,
          flags = 4,
          freeze = true,
          value = 65537
        }
      })
	        gg.addListItems({
        [1] = {
          address = results[i].address + 68,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
	        gg.addListItems({
        [1] = {
          address = results[i].address + 72,
          flags = 4,
          freeze = true,
          value = 70039
        }
      })
	        gg.addListItems({
        [1] = {
          address = results[i].address + 78,
          flags = 4,
          freeze = true,
          value = 70032
        }
      })
	        gg.addListItems({
        [1] = {
          address = results[i].address + 100,
          flags = 4,
          freeze = true,
          value = 4451
        }
      })
	        gg.addListItems({
        [1] = {
          address = results[i].address + 128,
          flags = 4,
          freeze = true,
          value = 70037
        }
      })
	        gg.addListItems({
        [1] = {
          address = results[i].address + 162,
          flags = 4,
          freeze = true,
          value = 70037
        }
      })
end
end
gg.clearResults()
gg.alert("تم تفعيل الحماية بنجاح ✔️")
end

function AABANKR1()
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then 
gg.alert("Failed Restart Game And Try , لم يتم التفعيل !! ❌")
gg.setVisible(true)
gg.processKill()
os.exit()
else
gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
resultsCount = gg.getResultCount()
results = gg.getResults(resultsCount)
for i = 1, resultsCount do
gg.addListItems({[1] = {address = results[i].address - 72,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = results[i].address - 68,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = results[i].address - 64,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = results[i].address + 48,flags = 4,freeze = true,value = 101}})
gg.addListItems({[1] = {address = results[i].address + 64,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = results[i].address + 68,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = results[i].address + 88,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = results[i].address + 92,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = results[i].address + 100,flags = 4,freeze = true,value = 4452}})
gg.addListItems({[1] = {address = results[i].address + 512,flags = 4,freeze = true,value = 5}})
gg.addListItems({[1] = {address = results[i].address + 540,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = results[i].address + 544,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = results[i].address + 548,flags = 4,freeze = true,value = 70086}})
end
end
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("16610;8388646;8388805", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("30", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("257D;0~99999F;1D;0D::300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.searchNumber("0~9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.setVisible(false)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber("1954047311D;1970037075D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.setVisible(false)
gg.editAll("9999999", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("11,932;12,004;32,768;65,536", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
else
gg.searchNumber("11932", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg = gg.getResults(100)
sl = gg.getResultCount()
for i = 1, sl do
dzy = jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = "0"}})
end
end
gg.clearResults() 
gg.setRanges(gg.REGION_C_ALLOC) 
gg.searchNumber("0;0~20;131586::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
jg = gg.getResults(100) 
sl = gg.getResultCount() 
if 100 < sl then 
sl = 100 
end 
for i = 1, sl do 
dzy = jg[i].address 
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}}) 
end
gg.clearResults()
gg.alert("تم تفعيل الحماية بنجاح ✔️")
end

function AABANKR2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.2IIIIII95IIIIIIII88IIIIII74e-41;1638IIII4D;16384ID;16384IIIID;16IIIIIIIIIIII384D;1IIIIIIII6384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
if gg.getResultCount() == 0 then 
gg.alert("Failed Restart Game And Try , لم يتم التفعيل !! ❌")
gg.setVisible(true)
gg.processKill()
os.exit()
else
gg.searchNumber("2.IIIIIIIIIII29588IIIIIIIIIIIIII74e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
resultsCount = gg.getResultCount()
results = gg.getResults(resultsCount)
for i = 1, resultsCount do
gg.addListItems({[1] = {address = results[i].address - 252,flags = 4,freeze = true,value = -1}})
gg.addListItems({[1] = {address = results[i].address - 236,flags = 4,freeze = true,value = -1}})
gg.addListItems({[1] = {address = results[i].address - 232,flags = 4,freeze = true,value = -1}})
gg.addListItems({[1] = {address = results[i].address - 72,flags = 4,freeze = true,value = -1}})
gg.addListItems({[1] = {address = results[i].address - 68,flags = 4,freeze = true,value = -1}})
gg.addListItems({[1] = {address = results[i].address - 64,flags = 4,freeze = true,value = -1}})
gg.addListItems({[1] = {address = results[i].address + 48,flags = 4,freeze = true,value = 119}})
gg.addListItems({[1] = {address = results[i].address + 64,flags = 4,freeze = true,value = -1}})
gg.addListItems({[1] = {address = results[i].address + 68,flags = 4,freeze = true,value = -1}})
gg.addListItems({[1] = {address = results[i].address + 100,flags = 4,freeze = true,value = 4452}})
gg.addListItems({[1] = {address = results[i].address + 130,flags = 4,freeze = true,value = -1}})
gg.addListItems({[1] = {address = results[i].address + 180,flags = 4,freeze = true,value = -1}})
gg.addListItems({[1] = {address = results[i].address + 310,flags = 4,freeze = true,value = -1}})
gg.addListItems({[1] = {address = results[i].address + 360,flags = 4,freeze = true,value = -1}})
gg.addListItems({[1] = {address = results[i].address + 450,flags = 4,freeze = true,value = -1}})
gg.addListItems({[1] = {address = results[i].address + 512,flags = 4,freeze = true,value = 0}})
gg.addListItems({[1] = {address = results[i].address + 540,flags = 4,freeze = true,value = -1}})
gg.addListItems({[1] = {address = results[i].address + 544,flags = 4,freeze = true,value = -1}})
gg.addListItems({[1] = {address = results[i].address + 548,flags = 4,freeze = true,value = -1}})
gg.addListItems({[1] = {address = results[i].address + 650,flags = 4,freeze = true,value = -1}})
gg.addListItems({[1] = {address = results[i].address + 800,flags = 4,freeze = true,value = -1}})
gg.addListItems({[1] = {address = results[i].address + 1024,flags = 4,freeze = true,value = 0}})
end
end
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("16610;8388646;8388805", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("30", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("257D;0~99999F;1D;0D::300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.searchNumber("0~9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.setVisible(false)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber("1954047311D;1970037075D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.setVisible(false)
gg.editAll("9999999", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("11,932;12,004;32,768;65,536", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
else
gg.searchNumber("11932", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg = gg.getResults(100)
sl = gg.getResultCount()
for i = 1, sl do
dzy = jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = "0"}})
end
end
gg.clearResults() 
gg.setRanges(gg.REGION_C_ALLOC) 
gg.searchNumber("0;0~20;131586::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
jg = gg.getResults(100) 
sl = gg.getResultCount() 
if 100 < sl then 
sl = 100 
end 
for i = 1, sl do 
dzy = jg[i].address 
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}}) 
end
gg.clearResults()
gg.alert("تم تفعيل الحماية بنجاح ✔️")
end

-- -- -- -- -- -- -- --   Wallhack Menu   -- -- -- -- -- -- -- -- --

function BDY()
BDYMN = gg.choice({
"📱 『 قائمة الول هاك 』",
"🎨 『 قائمة الألوان 』",
"📱 『 قائمة معالج الأكسينوس 』",
"🧰 『 ول هاك للأسلحة والموارد 』",
"⁦➡️⁩ 『 رجوع 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if BDYMN == nil then else
if BDYMN == 1 then WH() end
if BDYMN == 2 then CLR() end
if BDYMN == 3 then EXY1() end
if BDYMN == 4 then WHITEMS() end
if BDYMN == 5 then HOME1() end
end
PUBGMH = -1
end

function BDY2()
BDYMN2 = gg.choice({
"📱 『 ᴡᴀʟʟʜᴀᴄᴋ ᴍᴇɴᴜ 』",
"🎨 『 ᴄᴏʟᴏʀ ᴍᴇɴᴜ 』",
"📱 『 ᴇxʏɴᴏs ᴍᴇɴᴜ 』",
"🧰 『 ᴡᴀʟʟʜᴀᴄᴋ ɪᴛᴇᴍs / ᴡᴇᴀᴘᴏɴs 』",
"⬅️ 『 ʙ ᴀ ᴄ ᴋ 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if BDYMN2 == nil then else
if BDYMN2 == 1 then WH2() end
if BDYMN2 == 2 then CLR2() end
if BDYMN2 == 3 then EXY2() end
if BDYMN2 == 4 then WHITEMS() end
if BDYMN2 == 5 then HOME2() end
end
PUBGMH = -1
end

function WHITEMS()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('4.75926053e21;-7.00649232e-45;4.83304807e21::12', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-7.00649232e-45', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('5444', gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('4.88840463e21;-3.12839322e-39;5.09131994e21::12', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-3.12839322e-39', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('5444', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Wallhack Items Activated")
end

-- -- -- -- -- -- -- -- -- --  Wallhack  -- -- -- -- -- -- -- -- -- --

function WH()
WHMN = gg.choice({
"🔵 『 سناب دراغون 425 』",
"🔴 『 سناب دراغون 430 』",
"🔵 『 سناب دراغون 625 』",
"🔴 『 سناب دراغون 625 v² 』",
"🔵 『 سناب دراغون 636 』",
"🔴 『 سناب دراغون 660 』",
"🔴 『 سناب دراغون 665 』",
"🔵 『 سناب دراغون 675 』",
"🔴 『 سناب دراغون 675 v² 』",
"🔵 『 سناب دراغون 710 』",
"🔴 『 سناب دراغون 730 』",
"🔵 『 سناب دراغون 810 』",
"🔴 『 سناب دراغون 820 』",
"🔵 『 سناب دراغون 835 』",
"🔴 『 سناب دراغون 845 』",
"🔵 『 سناب دراغون 855 』",
"🔴 『 سناب دراغون 865 』",
"⚫ 『 سناب دراغون جميع الأجهزة 』",
"🛠️ 『 إصلاح التقطيع 430-835 』",
"🛠️ 『 إصلاح التقطيع 845-855 』",
"⁦➡️⁩ 『 رجوع 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if WHMN == nil then else
if WHMN == 1 then WH425() end
if WHMN == 2 then WH430() end
if WHMN == 3 then WH625() end
if WHMN == 4 then WH6252() end
if WHMN == 5 then WH636() end
if WHMN == 6 then WH660() end
if WHMN == 7 then WH665() end
if WHMN == 8 then WH675() end
if WHMN == 9 then WH6752() end
if WHMN == 10 then WH710() end
if WHMN == 11 then WH730() end
if WHMN == 12 then WH810() end
if WHMN == 13 then WH820() end
if WHMN == 14 then WH835() end
if WHMN == 15 then WH845() end
if WHMN == 16 then WH855() end
if WHMN == 17 then WH865() end
if WHMN == 18 then ALLD() end
if WHMN == 19 then FIXWH() end
if WHMN == 20 then FIXWH2() end
if WHMN == 21 then BDY() end
end
PUBGMH = -1
end

function WH2()
WHMN2 = gg.choice({
"🔵 『 sɴᴀᴘᴅʀᴀɢᴏɴ 425 』",
"🔴 『 sɴᴀᴘᴅʀᴀɢᴏɴ 430 』",
"🔵 『 sɴᴀᴘᴅʀᴀɢᴏɴ 625 』",
"🔴 『 sɴᴀᴘᴅʀᴀɢᴏɴ 625 v² 』",
"🔵 『 sɴᴀᴘᴅʀᴀɢᴏɴ 636 』",
"🔴 『 sɴᴀᴘᴅʀᴀɢᴏɴ 660 』",
"🔴 『 sɴᴀᴘᴅʀᴀɢᴏɴ 665 』",
"🔵 『 sɴᴀᴘᴅʀᴀɢᴏɴ 675 』",
"🔴 『 sɴᴀᴘᴅʀᴀɢᴏɴ 675 v² 』",
"🔵 『 sɴᴀᴘᴅʀᴀɢᴏɴ 710 』",
"🔴 『 sɴᴀᴘᴅʀᴀɢᴏɴ 730 』",
"🔵 『 sɴᴀᴘᴅʀᴀɢᴏɴ 810 』",
"🔴 『 sɴᴀᴘᴅʀᴀɢᴏɴ 820 』",
"🔵 『 sɴᴀᴘᴅʀᴀɢᴏɴ 835 』",
"🔴 『 sɴᴀᴘᴅʀᴀɢᴏɴ 845 』",
"🔵 『 sɴᴀᴘᴅʀᴀɢᴏɴ 855 』",
"🔴 『 sɴᴀᴘᴅʀᴀɢᴏɴ 865 』",
"⚫ 『 sɴᴀᴘᴅʀᴀɢᴏɴ ᴀʟʟ ᴅᴇᴠɪᴄᴇs 』",
"🛠️ 『 ғɪx ʙʟɪɴᴋ 430-835 』",
"🛠️ 『 ғɪx ʙʟɪɴᴋ 845-855 』",
"⬅️ 『 ʙ ᴀ ᴄ ᴋ 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if WHMN2 == nil then else
if WHMN2 == 1 then WH425() end
if WHMN2 == 2 then WH430() end
if WHMN2 == 3 then WH625() end
if WHMN2 == 4 then WH6252() end
if WHMN2 == 5 then WH636() end
if WHMN2 == 6 then WH660() end
if WHMN2 == 7 then WH665() end
if WHMN2 == 8 then WH675() end
if WHMN2 == 9 then WH6752() end
if WHMN2 == 10 then WH710() end
if WHMN2 == 11 then WH730() end
if WHMN2 == 12 then WH810() end
if WHMN2 == 13 then WH820() end
if WHMN2 == 14 then WH835() end
if WHMN2 == 15 then WH845() end
if WHMN2 == 16 then WH855() end
if WHMN2 == 17 then WH865() end
if WHMN2 == 18 then ALLD() end
if WHMN2 == 19 then FIXWH() end
if WHMN2 == 20 then FIXWH2() end
if WHMN2 == 21 then BDY2() end
end
PUBGMH = -1
end

function WH865()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.12020508e-19;3.76158192e-37;2.0;0.24022650719;0.69314718246::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 120}})
end
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.25414346e-19;1.7506772e-39;2.0;1.8425141e-39;1.74488844e-39::\n", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 865] Activated")
YELL865()
end

function WH665()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.0F;1.66231134e-19F;0.0F;9.21942286e-41F;7.23035964e-15F;2.37549734116F;4.40284136e-29F;2.25000905991F;3.58159416e-39F;1.66433004e10F::37", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("200")
gg.getResults(25)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.0F;-1.0F;0.0F;1.0F;-127.0F;0.24022650719F;0.69314718246F;0.00999999978F;-0.0F;0.0F::37", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("930")
gg.getResults(25)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("A8C")
gg.getResults(25)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("B10")
gg.getResults(25)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.refineAddress("588")
gg.getResults(25)
gg.editAll("999", 16)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 665] Activated")
CLR()
end

function FIXWH()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("🛠️ Fix Blink 430-835 🛠️")
end

function FIXWH2()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("🛠️ Fix Blink 845-855 🛠️")
end

function FIXSCOPE()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll("2.001", gg.TYPE_FLOAT)
gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll("2.001", gg.TYPE_FLOAT)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("🛠️ Fix Scope 🛠️")
end

function WH425()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.9427268e-44;2.0;3.0828566e-44;-1.0;3.2229865e-44;3.3631163e-44;3.643376e-44:97", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("3.1529215e-43;2.0F;3.1669345e-43F;3.1809475e-43:49", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("227;1,073,741,824;1,073,741,824;-1,082,130,432;1,073,741,824:49", 4, false, 536870912, 0, -1)
gg.searchNumber("1,073,741,824", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("1,123,024,896", 4)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 425] Activated")
CLR425()
end

function WH430()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 430] Activated")
CLR()
end

function WH625()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 625] Activated")
CLR()
end

function WH6252()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("5.79227989e21;-5.56955884e-40;2.0;1.39125666e-19;2.0:9285", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 625] Activated")
CLR()
end

function WH636()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("-2 147 086 191", gg.TYPE_DWORD,false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("4C8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("-2145644352", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7E0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.searchNumber("7,41529732e-29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 636] Activated")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8,192D;256D;8200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("6", gg.TYPE_DWORD)
gg.toast("Body Color [SnapDragon 636] Activated")
gg.clearResults()
end

function WH660()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("-2 147 086 191", gg.TYPE_DWORD,false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("4C8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("-2145644352", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7E0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.searchNumber("7,41529732e-29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 660] Activated")
CLR660()
end

function WH675()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("274,677,779D;2.25000452995;2;1.6623054e-19", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("130", 16)
gg.toast("25%")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("218D;3.7615819e-37;2;-1;1", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.toast("50%")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("95D;2;9.2194229e-41", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(15)
gg.editAll("130", 16)
gg.toast("75%")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("206D;3.7615819e-37;2;-1;1", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 675] Activated")
CLR675()
end

function WH6752()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("200")
gg.getResults(999)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("930")
gg.getResults(999)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 675] Activated")
CLR()
end

function WH710()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 710] Activated")
CLR()
end

function WH810()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 810] Activated")
gg.clearResults()
CLR()
end

function WH820()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 820] Activated")
CLR()
end

function WH835()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 835] Activated")
CLR()
end

function WH845()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("-2 145 644 340", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7E0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1 168 777 216", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("-2 147 483 636", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("4F8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1 168 777 216", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 845] Activated")
CLR845()
end

function WH855()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("-2 145 644 340", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7E0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1 168 777 216", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("-2 147 483 636", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("4F8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1 168 777 216", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 855] Activated")
CLR855()
end

function WH730()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("-2 145 644 340", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7E0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1 168 777 216", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("-2 147 483 636", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("4F8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1 168 777 216", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 730] Activated")
CLR845()
end

function ALLD()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("-2 147 086 191", gg.TYPE_DWORD,false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("4C8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("-2145644352", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7E0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("1168777216", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.searchNumber("7,41529732e-29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("WALLHACK [All Devices] Activated")
CLR()
end

-- -- -- -- -- -- -- -- -- --  Color Menu  SD 425 -- -- -- -- -- -- -- -- --

function CLR425()
CLRMN425 = gg.choice({
"🔴 『 لون أحمر  425 』",
"☣️ 『 لون أصفر  425 』",
"➡️ 『 رجوع 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if CLRMN425 == nil then else
if CLRMN425 == 1 then RED425() end
if CLRMN425 == 2 then YELL425() end
if CLRMN425 == 3 then CLR() end
end
PUBGMH = -1
end

function CLR4252()
CLRMN4252 = gg.choice({
"🔴 『 ʀᴇᴅ ʙᴏᴅʏ 425 』",
"☣️ 『 ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 425 』",
"⬅️ 『 ʙ ᴀ ᴄ ᴋ 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if CLRMN4252 == nil then else
if CLRMN4252 == 1 then RED425() end
if CLRMN4252 == 2 then YELL425() end
if CLRMN4252 == 3 then CLR2() end
end
PUBGMH = -1
end

function RED425()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber('"8204"', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineAddress('"408"', -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll('"96"', gg.TYPE_DWORD)
local t = gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems(t)
t = nil
gg.clearResults()
gg.toast("Red Body Activated")
end

function YELL425()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber('"8204"', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineAddress('"408"', -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll('"95"', gg.TYPE_DWORD)
local t = gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems(t)
t = nil
gg.clearResults()
gg.toast("Yellow Body Activated")
end

-- -- -- -- -- -- -- -- -- --  Color Menu  SD 675 -- -- -- -- -- -- -- -- --

function CLR675()
CLRMN675 = gg.choice({
"⚪ 『 لون أبيض  675 』",
"🔵 『 لون أزرق  675 』",
"♎ 『 لون أخضر  675 』",
"⁦➡️⁩ 『 رجوع 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if CLRMN675 == nil then else
if CLRMN675 == 1 then WHITE675() end
if CLRMN675 == 2 then BLUE675() end
if CLRMN675 == 3 then GREEN675() end
if CLRMN675 == 4 then CLR() end
end
PUBGMH = -1
end

function CLR6752()
CLRMN6752 = gg.choice({
"⚪ 『 ᴡʜɪᴛᴇ ʙᴏᴅʏ 675 』",
"🔵 『 ʙʟᴜᴇ ʙᴏᴅʏ 675 』",
"♎ 『 ɢʀᴇᴇɴ ʙᴏᴅʏ 675 』",
"⬅️ 『 ʙ ᴀ ᴄ ᴋ 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if CLRMN6752 == nil then else
if CLRMN6752 == 1 then WHITE675() end
if CLRMN6752 == 2 then BLUE675() end
if CLRMN6752 == 3 then GREEN675() end
if CLRMN6752 == 4 then CLR2() end
end
PUBGMH = -1
end

function GREEN675()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("69,897;147,457;69,739", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("Color 675 Green ")
gg.clearResults()
end

function WHITE675()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8202", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(330)
gg.editAll("14", gg.TYPE_DWORD)
gg.clearResults()
gg.toast('Body HD White Activated')
end

function BLUE675()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber('5,129,821,174,980,681,738', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('5,129,821,174,980,681,738', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineAddress('2D0', -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('5,129,821,174,980,681,738', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('5,129,821,174,980,673,543', gg.TYPE_QWORD)
gg.clearResults()
gg.toast('Blue Body Activated')
end

-- -- -- -- -- -- -- -- -- --  Color Menu  SD 845 -- -- -- -- -- -- -- -- --

function CLR845()
CLRMN845 = gg.choice({
"🔴 『 لون أحمر  845 』",
"☣️ 『 لون أصفر  845 』",
"♎ 『 لون أخضر  845 』",
"⚪ 『 لون أبيض  845 』",
"🔵 『 لون أزرق  845 』",
"⁦➡️⁩ 『 رجوع 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if CLRMN845 == nil then else
if CLRMN845 == 1 then RED845() end
if CLRMN845 == 2 then YELL845() end
if CLRMN845 == 3 then GREEN845() end
if CLRMN845 == 4 then WHITEALL() end
if CLRMN845 == 5 then BLUE845() end
if CLRMN845 == 6 then CLR() end
end
PUBGMH = -1
end

function CLR8452()
CLRMN8452 = gg.choice({
"🔴 『 ʀᴇᴅ ʙᴏᴅʏ 845 』",
"☣️ 『 ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 845 』",
"♎ 『 ɢʀᴇᴇɴ ʙᴏᴅʏ 845 』",
"⚪ 『 ᴡʜɪᴛᴇ ʙᴏᴅʏ 845 』",
"🔵 『 ʙʟᴜᴇ ʙᴏᴅʏ 845 』",
"⬅️ 『 ʙ ᴀ ᴄ ᴋ 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if CLRMN8452 == nil then else
if CLRMN8452 == 1 then RED845() end
if CLRMN8452 == 2 then YELL845() end
if CLRMN8452 == 3 then GREEN845() end
if CLRMN8452 == 4 then WHITEALL() end
if CLRMN8452 == 5 then BLUE845() end
if CLRMN8452 == 6 then CLR2() end
end
PUBGMH = -1
end

function YELL845()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0A8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Yellow Body Activated")
end

function RED845()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0A8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Red Color Activated")
end

function GREEN845()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Green Body Activated")
end

function BLUE845()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Blue Body Activated")
end

-- -- -- -- -- -- -- -- -- --  Color Menu  SD 855 -- -- -- -- -- -- -- -- --

function CLR855()
CLRMN855 = gg.choice({
"♎ 『 لون أخضر  855 』",
"☣️ 『 لون أصفر  855 』",
"🔵 『 لون أزرق  855 』",
"⚪ 『 لون أبيض  855 』",
"🔴 『 لون أحمر  855 』",
"⁦➡️⁩ 『 رجوع 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if CLRMN855 == nil then else
if CLRMN855 == 1 then GREEN845() end
if CLRMN855 == 2 then YELL855() end
if CLRMN855 == 3 then BLUE845() end
if CLRMN855 == 4 then WHITE855() end
if CLRMN855 == 5 then RED855() end
if CLRMN855 == 6 then CLR() end
end
PUBGMH = -1
end

function CLR8552()
CLRMN8552 = gg.choice({
"♎ 『 ɢʀᴇᴇɴ ʙᴏᴅʏ 855 』",
"☣️ 『 ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 855 』",
"🔵 『 ʙʟᴜᴇ ʙᴏᴅʏ 855 』",
"⚪ 『 ᴡʜɪᴛᴇ ʙᴏᴅʏ 855 』",
"🔴 『 ʀᴇᴅ ʙᴏᴅʏ 855 』",
"⬅️ 『 ʙ ᴀ ᴄ ᴋ 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if CLRMN8552 == nil then else
if CLRMN8552 == 1 then GREEN845() end
if CLRMN8552 == 2 then YELL855() end
if CLRMN8552 == 3 then BLUE845() end
if CLRMN8552 == 4 then WHITE855() end
if CLRMN8552 == 5 then RED855() end
if CLRMN8552 == 6 then CLR2() end
end
PUBGMH = -1
end

function YELL855()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0A8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("8198", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("8199", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("☣️ ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 855 Activated")
end

function WHITE855()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0A0")
gg.getResults(10)
gg.editAll("8197", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("White Body Activated")
end

function RED855()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Red Body Activated")
end

-- -- -- -- -- -- -- -- -- -- --   All Colors   -- -- -- -- -- -- -- -- -- -- --

function CLR()
CLRMN = gg.choice({
"📂 『 قائمة ألوان SD425 』",
"📂 『 قائمة ألوان SD675 』",
"📂 『 قائمة ألوان SD845 』",
"📂 『 قائمة ألوان SD855 』",
"🔴 『 لون أحمر  625 』",
"☣️ 『 لون أصفر  625 』",
"🔴 『 لون أحمر  660 』",
"☣️ 『 لون أصفر  660 』",
"🔴 『 لون أحمر  835 』",
"☣️ 『 لون أصفر  835 』",
"⚪ 『 لون أبيض لجميع الأجهزة 』",
"⚫ 『 لون أسود لجميع الأجهزة 』",
"⁦➡️⁩ 『 رجوع 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if CLRMN == nil then else
if CLRMN == 1 then CLR425() end
if CLRMN == 2 then CLR675() end
if CLRMN == 3 then CLR845() end
if CLRMN == 4 then CLR855() end
if CLRMN == 5 then RED625() end
if CLRMN == 6 then YELL625() end
if CLRMN == 7 then RED625() end
if CLRMN == 8 then YELL660() end
if CLRMN == 9 then RED835() end
if CLRMN == 10 then YELL835() end
if CLRMN == 11 then WHITEALL() end
if CLRMN == 12 then BLACKALL() end
if CLRMN == 13 then BDY() end
end
PUBGMH = -1
end

function CLR2()
CLRMN2 = gg.choice({
"📂 『 SD425 ᴄᴏʟᴏʀ ᴍᴇɴᴜ 』",
"📂 『 SD675 ᴄᴏʟᴏʀ ᴍᴇɴᴜ 』",
"📂 『 SD845 ᴄᴏʟᴏʀ ᴍᴇɴᴜ 』",
"📂 『 SD855 ᴄᴏʟᴏʀ ᴍᴇɴᴜ 』",
"🔴 『 ʀᴇᴅ ʙᴏᴅʏ 625 』",
"☣️ 『 ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 625 』",
"🔴 『 ʀᴇᴅ ʙᴏᴅʏ 660 』",
"☣️ 『 ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 660 』",
"🔴 『 ʀᴇᴅ ʙᴏᴅʏ 835 』",
"☣️ 『 ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 835 』",
"⚪ 『 ᴡʜɪᴛᴇ ʙᴏᴅʏ ᴀʟʟ 』",
"⚫ 『 ʙʟᴀᴄᴋ ʙᴏᴅʏ ᴀʟʟ 』",
"⬅️ 『 ʙ ᴀ ᴄ ᴋ 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if CLRMN2 == nil then else
if CLRMN2 == 1 then CLR4252() end
if CLRMN2 == 2 then CLR6752() end
if CLRMN2 == 3 then CLR8452() end
if CLRMN2 == 4 then CLR8552() end
if CLRMN2 == 5 then RED625() end
if CLRMN2 == 6 then YELL625() end
if CLRMN2 == 7 then RED625() end
if CLRMN2 == 8 then YELL660() end
if CLRMN2 == 9 then RED835() end
if CLRMN2 == 10 then YELL835() end
if CLRMN2 == 11 then WHITEALL() end
if CLRMN2 == 12 then BLACKALL() end
if CLRMN2 == 13 then BDY2() end
end
PUBGMH = -1
end

function RED625()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Red Body Activated")
end

function YELL625()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber('1,080,033,292D;786,441D;8,200D:21::', gg.TYPE_DWORD,false, gg.SIGN_EQUAL,0,-1)
gg.searchNumber('8200', gg.TYPE_DWORD,false, gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll('8198', gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Yellow Body Activated")
end

function WHITEALL()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("White Body Activated")
end

function BLACKALL()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("-999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Black Body Activated")
end

function RED835()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("🔴 ʀᴇᴅ ʙᴏᴅʏ 835 Activated")
end

function YELL835()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber( "2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber( "2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll( "120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber( "2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber( "2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll( "120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber( "8200;96", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber( "8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress( "098", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll( "8198", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("☣️ ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 835 Activated")
end

function YELL865()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1,194,347,012;8,196;8,200;524,292;1,080,039,424", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200\n", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.toast("☣️ ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 865 Activated")
gg.clearResults()
end

function YELL660()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("786,443;1,661,304,844;8,200;1,194,380,045;671,236,099;1,074,794,496:21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Yellow Body Activated")
end

-- -- -- -- -- -- -- -- --   Looby Menu   -- -- -- -- -- -- -- -- --

function INLOOBY()
MNINLOOBY = gg.choice({
"💥 『 هيدشوت %95 』",
"💥 『 هيدشوت %75 』",
"💥 『 هيدشوت %50 』",
"🕸 『 ثبات سلاح 』",
"🕸 『 ثبات سلاح v2 』",
"☂️ 『 نزول برشوت مسافات بعيدة 』",
"📍 『 انتينا 』",
"🌱 『 إزاله العشب 』",
"➡️ 『 رجوع 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if MNINLOOBY == nil then else
if MNINLOOBY == 1 then HSHOT95() end
if MNINLOOBY == 2 then HSHOT75() end
if MNINLOOBY == 3 then HSHOT50() end
if MNINLOOBY == 4 then LESSREC1() end
if MNINLOOBY == 5 then LESSREC2() end
if MNINLOOBY == 6 then FASTPARA2() end
if MNINLOOBY == 7 then ANTEENA2() end
if MNINLOOBY == 8 then NOGRASSLOBBY() end
if MNINLOOBY == 9 then HOME1() end
end
PUBGMH = -1
end

function INLOOBY2()
MNINLOOBY2 = gg.choice({
"💥 『 ʜᴇᴀᴅsʜᴏᴛ %95 』",
"💥 『 ʜᴇᴀᴅsʜᴏᴛ %75 』",
"💥 『 ʜᴇᴀᴅsʜᴏᴛ %50 』",
"🕸 『 ʟᴇss ʀᴇᴄᴏɪʟ 』",
"🕸 『 ʟᴇss ʀᴇᴄᴏɪʟ v2 』",
"☂️ 『 ғᴀsᴛ ᴘᴀʀᴀᴄʜᴜᴛᴇ ʟᴏɴɢ ʀᴀɴɢᴇ 』",
"📍 『 ᴀɴᴛᴇɴɴᴀ 』",
"🌱 『 ɴᴏ ɢʀᴀss 』",
"⬅️ 『 ʙ ᴀ ᴄ ᴋ 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if MNINLOOBY2 == nil then else
if MNINLOOBY2 == 1 then HSHOT95() end
if MNINLOOBY2 == 2 then HSHOT75() end
if MNINLOOBY2 == 3 then HSHOT50() end
if MNINLOOBY2 == 4 then LESSREC1() end
if MNINLOOBY2 == 5 then LESSREC2() end
if MNINLOOBY2 == 6 then FASTPARA2() end
if MNINLOOBY2 == 7 then ANTEENA2() end
if MNINLOOBY2 == 8 then NOGRASSLOBBY() end
if MNINLOOBY2 == 9 then HOME2() end
end
PUBGMH = -1
end


function NOGRASSLOBBY() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(":Default__MaterialExpressionLandscapeGrassOutput", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("No Grass Activated")
end

function HSHOT95() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber('"0.10000000149;64.50088500977"', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('"0.10000000149"', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("8", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("220", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP) 
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(99)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("Headshot 95% Activated")
end

function HSHOT75() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber('"0.10000000149;64.50088500977"', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('"0.10000000149"', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("8", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("175", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP) 
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(99)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("Headshot 75% Activated")
end

function HSHOT50() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("125", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Headshot 50% Activated")
end

function LESSREC1() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP|gg.REGION_CODE_APP)
gg.searchNumber("-1327407162645804543", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1327407162645804543", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("A28", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("-1327407166641930240", gg.TYPE_QWORD)
gg.clearResults() 
gg.searchNumber("-1 387 800 265 460 020 720", 32, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineAddress("6F8", -1, 32) 
gg.getResults(1337) 
gg.editAll("-1 387 800 268 364 578 816", 32) 
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-5.10804392e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2~4;1.09375;1;18;3.5::25", 16, false, 536870912, 0, -1)
gg.searchNumber("2~4;1.09375::5", 16, false, 536870912, 0, -1)
gg.searchNumber("2~4", 16, false, 536870912, 0, -1)
gg.getResults(50)
gg.editAll("-0.5", 16)
gg.clearResults()
gg.toast("Less Recoil Activated")
gg.clearResults()
end

function LESSREC2() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP|gg.REGION_CODE_APP)
gg.searchNumber("-1327407162645804543", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1327407162645804543", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("A28", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("-1327407166641930240", gg.TYPE_QWORD)
gg.clearResults() 
gg.searchNumber("-1 387 800 265 460 020 720", 32, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineAddress("6F8", -1, 32) 
gg.getResults(1337) 
gg.editAll("-1 387 800 268 364 578 816", 32) 
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-5.10804392e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2~4;1.09375;1;18;3.5::25", 16, false, 536870912, 0, -1)
gg.searchNumber("2~4;1.09375::5", 16, false, 536870912, 0, -1)
gg.searchNumber("2~4", 16, false, 536870912, 0, -1)
gg.getResults(50)
gg.editAll("-0.5", 16)
gg.clearResults()
gg.toast("Less Recoil Activated")
gg.clearResults()
end

function ANTEENA2() -- 0.19.0
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Antenna Activated")
end

function ANTEENA() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Antenna Activated")
end

-- -- -- -- -- -- -- -- -- -- --   IN GAME MENU   -- -- -- -- -- -- -- -- -- -- --

function INGAME()
MNINGAME = gg.choice({
"💥 『 هيدشوت %100 』",
"🎯 『 ثبات سلاح %100 』",
"☄️ 『 ماجك بوليت 』",
"💢 『 تصغير مؤشر التصويب 』",
"🎯 『 ايم بوت 』",
"📍 『 انتينا 』",
"🤾 『 قفزة أمامية ( تشغيل ) 』",
"🤾 『 قفزة أمامية ( إيقاف ) 』",
"🛢 『 سرعة جيب + بانزين لاينتهي 』",
"🌑 『 لون سماء أسود 』",
"🎴 『 لون سماء أحمر 』",
"🌫️ 『 إزالة الضباب من الجو 』",
"🎥 『 منظور آيباد 』",
"🌲 『 إزالة العشب والأشجار 』",
"🌱 『 إزالة عشب خريطة ارانغل 』",
"🏃 『 سرعة لاعب ( تشغيل ) 』",
"🚶 『 سرعة لاعب ( ايقاف ) 』",
"❌ 『 تأثير الضرب 🆇 ( تشغيل ) 』",
"⭕️ 『 تأثير الضرب 🆇 ( إيقاف ) 』",
"➡️ 『 رجوع 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if MNINGAME == nil then else
if MNINGAME == 1 then HSHOT500() end
if MNINGAME == 2 then NOREC100() end
if MNINGAME == 3 then MAGICB2() end
if MNINGAME == 4 then SMALLCROSS() end
if MNINGAME == 5 then AIMBOT() end
if MNINGAME == 6 then ANTEENA() end
if MNINGAME == 7 then FRONTJUMPON() end
if MNINGAME == 8 then FRONTJUMPOFF() end
if MNINGAME == 9 then UNLIMITEDFUEL() end
if MNINGAME == 10 then BLACKSKY() end
if MNINGAME == 11 then REDSKY() end
if MNINGAME == 12 then NOFOG() end
if MNINGAME == 13 then IPADVIEW() end
if MNINGAME == 14 then NOGRASS() end
if MNINGAME == 15 then NOGRASS2() end
if MNINGAME == 16 then SPEEDON() end
if MNINGAME == 17 then SPEEDOFF() end
if MNINGAME == 18 then KILLXON() end
if MNINGAME == 19 then KILLXOFF() end
if MNINGAME == 20 then HOME1() end
end
PUBGMH = -1
end

function INGAME2()
MNINGAME2 = gg.choice({
"💥 『 ʜᴇᴀᴅsʜᴏᴛ 100% 』",
"🎯 『 ɴᴏ ʀᴇᴄᴏɪʟ 100% 』",
"☄️ 『 ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ 』",
"💢 『 sᴍᴀʟʟ ᴄʀᴏssʜᴀɪʀ 』",
"🎯 『 ᴀɪᴍʙᴏᴛ 』",
"📍 『 ᴀɴᴛᴇɴɴᴀ 』",
"🤾 『 ғʀᴏɴᴛ ᴊᴜᴍᴘ (ᴏɴ) 』",
"🤾 『 ғʀᴏɴᴛ ᴊᴜᴍᴘ (ᴏғғ) 』",
"🛢 『 ᴜɴʟɪᴍɪᴛᴇᴅ ғᴜᴇʟ + sᴘᴇᴇᴅ ᴊᴇᴇᴘ 』",
"🌑 『 ʙʟᴀᴄᴋ sᴋʏ 』",
"🎴 『 ʀᴇᴅ sᴋʏ 』",
"🌫️ 『 ʀᴇᴍᴏᴠᴇ ғᴏɢ 』",
"🎥 『 ɪᴘᴀᴅ ᴠɪᴇᴡ 』",
"🌲 『 ɴᴏ ɢʀᴀss & ᴛʀᴇᴇs 』",
"🌱 『 ɴᴏ ɢʀᴀss ( ᴇʀᴀɴɢʟᴇ ) 』",
"🏃 『 ᴍɪᴄʀᴏ sᴘᴇᴇᴅ (ᴏɴ) 』",
"🚶 『 ᴍɪᴄʀᴏ sᴘᴇᴇᴅ (ᴏғғ) 』",
"❌ 『 ʜɪᴛ ᴇғғᴇᴄᴛ 🆇 (ᴏɴ) 』",
"⭕️ 『 ʜɪᴛ ᴇғғᴇᴄᴛ 🆇 (ᴏғғ) 』",
"⬅️ 『 ʙ ᴀ ᴄ ᴋ 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if MNINGAME2 == nil then else
if MNINGAME2 == 1 then HSHOT500() end
if MNINGAME2 == 2 then NOREC100() end
if MNINGAME2 == 3 then MAGICB2() end
if MNINGAME2 == 4 then SMALLCROSS() end
if MNINGAME2 == 5 then AIMBOT() end
if MNINGAME2 == 6 then ANTEENA() end
if MNINGAME2 == 7 then FRONTJUMPON() end
if MNINGAME2 == 8 then FRONTJUMPOFF() end
if MNINGAME2 == 9 then UNLIMITEDFUEL() end
if MNINGAME2 == 10 then BLACKSKY() end
if MNINGAME2 == 11 then REDSKY() end
if MNINGAME2 == 12 then NOFOG() end
if MNINGAME2 == 13 then IPADVIEW() end
if MNINGAME2 == 14 then NOGRASS() end
if MNINGAME2 == 15 then NOGRASS2() end
if MNINGAME2 == 16 then SPEEDON() end
if MNINGAME2 == 17 then SPEEDOFF() end
if MNINGAME2 == 18 then KILLXON() end
if MNINGAME2 == 19 then KILLXOFF() end
if MNINGAME2 == 20 then HOME2() end
end
PUBGMH = -1
end

function KILLXON() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Hit Effect 🆇 Activated!")
end

function KILLXOFF() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("10", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Hit Effect 🆇 Dectivated!")
end

function UNLIMITEDFUEL() -- 0.19.0
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.647058857", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("-180", 16)
gg.clearResults()
gg.toast("Unlimited Fuel + Speed Jeep Activated!")
end

function DACIAJUMP() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(61, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("999", gg.TYPE_FLOAT)
gg.sleep(1000)
if revert ~= nil then gg.setValues(revert) end
gg.clearResults()
end

function JEEPJUMP() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(61, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("955", gg.TYPE_FLOAT)
gg.sleep(1000)
if revert ~= nil then gg.setValues(revert) end
gg.clearResults()
end

function FRONTJUMPON() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("16;4,575,657,222,473,777,152;1,065,353,216;17,179,869,188:37", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(1000)
gg.searchNumber("4,575,657,222,473,777,152", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(500)
gg.editAll("4,575,657,222,488,624,988", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,133,903,872;4,611,686,019,455,831,245;1,103,626,240;4,575,657,222,517,817,344:25", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(1000)
gg.searchNumber("4,611,686,019,455,831,245", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(500)
gg.editAll("4,611,686,019,501,674,988", gg.TYPE_QWORD) 
gg.clearResults()
gg.toast("Front Jump Activated!")
end

function FRONTJUMPOFF() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("16;4,575,657,222,488,624,988;1,065,353,216;17,179,869,188:37", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(1000)
gg.searchNumber("4,575,657,222,488,624,988", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(500)
gg.editAll("4,575,657,222,473,777,152", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,133,903,872;4,611,686,019,501,674,988;1,103,626,240;4,575,657,222,517,817,344:25", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(1000)
gg.searchNumber("4,611,686,019,501,674,988", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(500)
gg.editAll("4,611,686,019,455,831,245", gg.TYPE_QWORD) 
gg.clearResults()
gg.toast("Front Jump Deactivated!")
end

function AIMBOT() -- 0.19.0
gg.clearResults()    
gg.setRanges(16384)
gg.setVisible(false)
gg.searchNumber("-290,174,237", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-290,174,237", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("E00", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Aimbot activated!")
end

function NOREC100() -- 0.19.0
gg.clearResults()
gg.setRanges(8)
gg.setVisible(false)
gg.searchNumber("-2.2673448e24;-1.36203639e28", 16, false, 536870912, 0, -1)
gg.setVisible(false)
gg.setVisible(false)
gg.searchNumber("-1.36203639e28", 16, false, 536870912, 0, -1)
gg.setVisible(false)
gg.setVisible(false)
gg.getResults(99)
gg.editAll("0", 16)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7B0", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("-1281263098870628352", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("3.8126822e-21;-1.1144502e28;-2.0291021e20:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("328")
gg.getResults(551)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.2~0.3;53;30;1::", 16, false, 536870912, 0, -1)
gg.searchNumber("0.2~0.3;1::", 16, false, 536870912, 0, -1)
gg.getResults(200)
gg.editAll("0", 16)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-2.2673448e24;-1.36203639e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.36203639e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("740", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("-1903895931231645696", gg.TYPE_QWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7B0", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("-1281263098870628352", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("No Recoil Activated") 
end

function SMALLCROSS() -- 0.19.0
gg.clearResults() 
gg.setRanges(32)
gg.searchNumber("2~4;1.09375;1;18;3.5::25", 16, false, 536870912, 0, -1)
gg.searchNumber("2~4;1.09375::5", 16, false, 536870912, 0, -1)
gg.searchNumber("2~4", 16, false, 536870912, 0, -1)
gg.getResults(50)
gg.editAll("-0.5", 16)
gg.clearResults()
gg.toast("Small Crosshair Activated")
end

function HSHOT500() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;23;30.5",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6000)
gg.editAll("900;925", gg.TYPE_FLOAT)
gg.clearResults()
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_FLOAT then
v.value = "200"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.editAll("9999",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("2048D;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.07", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Headshot 100% Activated")
end

function BLACKSKY() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("671236105;1074792717;8200;1194363663;11::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Black Sky Activated")
end

function REDSKY() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber('671236105;1074792717;8200;1194363663;11::17', gg.TYPE_DWORD,false, gg.SIGN_EQUAL,0,-1)
gg.refineNumber('8200', gg.TYPE_DWORD,false, gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll('5', gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Red Sky Activated")
end

function NOGRASS() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("0.00390625;1;0.99900001287;2", gg.TYPE_FLOAT, false)
gg.searchNumber("1", gg.TYPE_FLOAT, false)
gg.getResults(30)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("No Grass & Trees Activated")
end

function NOGRASS2() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearResults()
gg.searchNumber("8.0F;1.20000004768F;0.80000001192F;1.5F;0.80000001192F;1.5F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("No Grass Activated")
gg.clearResults()
end

function NOFOG() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1759781550398895551", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1759781550398895551", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("098", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1759781550398895551", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("-1759781554395021312", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("No Fog Activated")
end

function IPADVIEW() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2.8025969e-45;220;25;178;15;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("350", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("iPad View Activated")
end

function SPEEDON() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll("1.06", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Medium Speed activated!')
end
  
function SPEEDOFF() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.06;1.06;1.06;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.06", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll("1", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Medium Speed deactivated!')
end

-- -- -- -- -- -- -- -- -- --   Not Safe Menu   -- -- -- -- -- -- -- -- -- --

function NOTSAFE()
MNNOTSAFE = gg.choice({
"📂 『 قائمة الفلاش سبيد 』",
"🎯 『 ثبات سلاح %100 』",
"💥 『 طلقة سريعة 』",
"💥 『 دمج عالي !! 』",
"🔥 『 ماجك بوليت 』",
"💣 『 ايم بوت  •360°• 』",
"💣 『 ايم بوت •(NEW!)• ) 』",
"⬆️ 『 تشغيل السيت سكوب 』",
"⛔ 『 إيقاف السيت سكوب 』",
"⬆️ 『 تشغيل الستاند سكوب 』",
"⛔ 『 إيقاف الستاند سكوب 』",
"☂️ 『 نزول برشوت سريع ᴘᴄ 』",
"☂️ 『 نزول برشوت مسافات بعيدة 』",
"💀 『 سبيد نوك 』",
"➡️ 『 رجوع 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if MNNOTSAFE == nil then else
if MNNOTSAFE == 1 then FLASHSPD() end
if MNNOTSAFE == 2 then NOREC1002() end
if MNNOTSAFE == 3 then INSTAHIT() end
if MNNOTSAFE == 4 then HIGHDAM() end
if MNNOTSAFE == 5 then MAGICB() end
if MNNOTSAFE == 6 then AIMBOT360() end
if MNNOTSAFE == 7 then AIMBOT3602() end
if MNNOTSAFE == 8 then SITSCOPEON() end
if MNNOTSAFE == 9 then SITSCOPEOFF() end
if MNNOTSAFE == 10 then STANDSCOPEON() end
if MNNOTSAFE == 11 then STANDSCOPEOFF() end
if MNNOTSAFE == 12 then FASTPARA() end
if MNNOTSAFE == 13 then FASTPARA2() end
if MNNOTSAFE == 14 then KNOCKSPEED() end
if MNNOTSAFE == 15 then HOME1() end
end
PUBGMH = -1
end

function NOTSAFE2()
MNNOTSAFE2 = gg.choice({
"📂 『 ғʟᴀsʜ sᴘᴇᴇᴅ ᴍᴇɴᴜ 』",
"🎯 『 ɴᴏ ʀᴇᴄᴏɪʟ 100% 』",
"💥 『 ɪɴsᴛᴀɴᴛ ʜɪᴛ 』",
"💥 『 ʜɪɢʜ ᴅᴀᴍᴀɢᴇ !! 』",
"🔥 『 ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ 』",
"💣 『 ᴀɪᴍʙᴏᴛ  •360°• 』",
"💣 『 ᴀɪᴍʙᴏᴛ  •(NEW!)• 』",
"⬆️ 『 sɪᴛ sᴄᴏᴘᴇ (ᴏɴ) 』",
"⛔ 『 sɪᴛ sᴄᴏᴘᴇ (ᴏғғ) 』",
"⬆️ 『 sᴛᴀɴᴅ sᴄᴏᴘᴇ ғʀᴏɴᴛ (ᴏɴ) 』",
"⛔ 『 sᴛᴀɴᴅ sᴄᴏᴘᴇ ғʀᴏɴᴛ (ᴏғғ) 』",
"☂️ 『 ғᴀsᴛ ᴘᴀʀᴀᴄʜᴜᴛᴇ ᴘᴄ 』",
"☂️ 『 ғᴀsᴛ ᴘᴀʀᴀᴄʜᴜᴛᴇ ʟᴏɴɢ ʀᴀɴɢᴇ 』",
"💀 『 sᴘᴇᴇᴅ ᴋɴᴏᴄᴋ 』",
"⬅️ 『 ʙ ᴀ ᴄ ᴋ 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if MNNOTSAFE2 == nil then else
if MNNOTSAFE2 == 1 then FLASHSPD2() end
if MNNOTSAFE2 == 2 then NOREC1002() end
if MNNOTSAFE2 == 3 then INSTAHIT() end
if MNNOTSAFE2 == 4 then HIGHDAM() end
if MNNOTSAFE2 == 5 then MAGICB() end
if MNNOTSAFE2 == 6 then AIMBOT360() end
if MNNOTSAFE2 == 7 then AIMBOT3602() end
if MNNOTSAFE2 == 8 then SITSCOPEON() end
if MNNOTSAFE2 == 9 then SITSCOPEOFF() end
if MNNOTSAFE2 == 10 then STANDSCOPEON() end
if MNNOTSAFE2 == 11 then STANDSCOPEOFF() end
if MNNOTSAFE2 == 12 then FASTPARA() end
if MNNOTSAFE2 == 13 then FASTPARA2() end
if MNNOTSAFE2 == 14 then KNOCKSPEED() end
if MNNOTSAFE2 == 15 then HOME2() end
end
PUBGMH = -1
end

function HIGHDAM()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("16000~99999;3D;0.1;1D::40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16000~99999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0000B040rA;0000803FrA;0000403FrA:9', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3) 
gg.editAll('1,087,897,600;1,075,838,976;1,075,838,976', gg.TYPE_DWORD)
gg.clearResults()
gg.toast("High Damage activated!")
end

function NOREC1002() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP|gg.REGION_CODE_APP)
gg.searchNumber("-1327407162645804543", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1327407162645804543", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("A28", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("-1327407166641930240", gg.TYPE_QWORD)
gg.clearResults() 
gg.searchNumber("-1 387 800 265 460 020 720", 32, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineAddress("6F8", -1, 32) 
gg.getResults(1337) 
gg.editAll("-1 387 800 268 364 578 816", 32) 
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-5.10804392e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("No Recoil Activated") 
end

function MAGICB2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("16000~99999;3D;0.1;1D::40", 16, false, 536870912, 0, -1)
gg.searchNumber("16000~99999", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("500000", 16)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0000B040rA;0000803FrA;0000403FrA:9', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3) 
gg.editAll('1,087,897,600;1,075,838,976;1,075,838,976', gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("150;85;45;-129;-85", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("9999999999", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("2048D;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.07", gg.TYPE_FLOAT)
gg.toast("Magic Bullet Activated")
end

function MAGICB()
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;23;30.5",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("23;25;30.5",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("25;23;30.5",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("23;25;30.5",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(3)
gg.editAll("180",gg.TYPE_FLOAT)
gg.clearResults()
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_FLOAT then
v.value = "200"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.editAll("9999",gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("180",gg.TYPE_FLOAT)
gg.clearResults()
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_FLOAT then
v.value = "200"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.editAll("-460", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("360;0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,324,366,404",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("1,324,366,404",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "100"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.editAll("100",gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Magic Bullet Activated 🔥")
end

function INSTAHIT()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Instant Hit Activated!")
end

function AIMBOT360()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("2046820354;-336587221:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2046820354", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2046820353", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-476053504;-349478012:189", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-476053504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-476053503;-476053504", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Aimbot activated!")
end

function AIMBOT3602()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(32)
gg.searchNumber("3.5;1;200;20::999", 16, false, 536870912, 0, -1)
gg.searchNumber("3.5;1;200;20", 16, false, 536870912, 0, -1)
gg.getResults(300)
gg.editAll("-1.0e10", 16)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("3.5;1;200;20::999", 16, false, 536870912, 0, -1)
gg.searchNumber("3.5;1;200;20::959", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("-99999", 16)
gg.clearResults()
gg.toast("Aimbot activated!")
end

function FASTPARA()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("2048D;4D;1F;1F;1D:30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3000;5000;1024;1000::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3472849)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Fast Parachute activated!")
end

function FASTPARA2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.75;150;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("30", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.75;150;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Fast Parachute activated!")
gg.clearResults()
end

function KNOCKSPEED() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.0F;7.0064923e-45F;1.0F;100.0F;1.0F;2,500,000,000.0F;0.10000000149F;88.0F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("9", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.0F;0.60000002384F;0.10000000149F;0.125F ::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("9",  gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Knock Speed Activated")
end


-- -- -- -- -- -- -- -- -- --   Flash Speed Menu   -- -- -- -- -- -- -- -- -- --

function FLASHSPD()
MNFLASHSPD = gg.choice({
"💥 『 إصلاح دمج الأسلحة 』",
"⚡ 『 تشغيل الفلاش سبيد 』",
"✨ 『 إيقاف الفلاش سبيد 』",
"🔧 『 إصلاح التقطيع 』",
"⚡ 『 تشغيل الفلاش سبيد v2 』",
"✨ 『 إيقاف الفلاش سبيد v2 』",
"🚙 『 تسريع الجيب 』",
"🚗 『 تسريع الداسيا 』",
"➡️ 『 رجوع 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if MNFLASHSPD == nil then else
if MNFLASHSPD == 1 then FIXDMG() end
if MNFLASHSPD == 2 then FLASHNEW1() end
if MNFLASHSPD == 3 then FLASHNEW2() end
if MNFLASHSPD == 4 then FIXFLASH() end
if MNFLASHSPD == 5 then FLASHS1() end
if MNFLASHSPD == 6 then FLASHS2() end
if MNFLASHSPD == 7 then JEEPS() end
if MNFLASHSPD == 8 then DACIA() end
if MNFLASHSPD == 9 then HOME1() end
end
PUBGMH = -1
end

function FLASHSPD2()
MNFLASHSPD2 = gg.choice({
"💥 『 ғɪx ᴅᴀᴍᴀɢᴇ 』",
"⚡ 『 ғʟᴀsʜ sᴘᴇᴇᴅ (ᴏɴ) 』",
"✨ 『 ғʟᴀsʜ sᴘᴇᴇᴅ (ᴏғғ) 』",
"🔧 『 ғɪx ғʟᴀsʜ sᴘᴇᴇᴅ 』",
"⚡ 『 ғʟᴀsʜ sᴘᴇᴇᴅ v2 (ᴏɴ) 』",
"✨ 『 ғʟᴀsʜ sᴘᴇᴇᴅ v2 (ᴏғғ) 』",
"🚙 『 sᴘᴇᴇᴅ ᴊᴇᴇᴘ 』",
"🚗 『 sᴘᴇᴇᴅ ᴅᴀᴄɪᴀ 』",
"⬅️ 『 ʙ ᴀ ᴄ ᴋ 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if MNFLASHSPD2 == nil then else
if MNFLASHSPD2 == 1 then FIXDMG() end
if MNFLASHSPD2 == 2 then FLASHNEW1() end
if MNFLASHSPD2 == 3 then FLASHNEW2() end
if MNFLASHSPD2 == 4 then FIXFLASH() end
if MNFLASHSPD2 == 5 then FLASHS1() end
if MNFLASHSPD2 == 6 then FLASHS2() end
if MNFLASHSPD2 == 7 then JEEPS() end
if MNFLASHSPD2 == 8 then DACIA() end
if MNFLASHSPD2 == 9 then HOME2() end
end
PUBGMH = -1
end

function FIXDMG()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("50000~100000;0;1;5D~100D::13", 16, false, 536870912, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("قم بالتفعيل مرة ثانية")
else
gg.searchNumber("50000~100000", 16, false, 536870912, 0, -1)
RFSSMG1 = gg.getResults(210)
gg.editAll("32465", 16)
gg.clearResults()
gg.toast("تم إصلاح دمج الأسلحة")
end 
gg.clearResults()
end

function FLASHS1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20000;750;0.0001;0.0005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.5", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Flash Speed Activated!')
end

function FLASHS2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20000;750;0.0001;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.0005", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20000;750;0.0001;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.0005", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Flash Speed Deactivated!')
end

function JEEPS()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.647058857;0.30000001192;0.94117647409::9', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.647058857;0.30000001192::5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.647058857;0.30000001192::5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.647058857;0.30000001192::5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll('50.241295', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Jeep Speed activated!')
end 

function FLASHNEW1()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
gg.searchNumber("-6.03221444e26;-1.3078764e28;-3.74440972e28;-1.86389771e-20;-1.11445016e28;-9.39921508e20;-1.8331477e27:33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.86389771e-20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Flash Speed Activated!')
end

function FLASHNEW2()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
gg.searchNumber("-6.03221444e26;-1.3078764e28;-3.74440972e28;0;-1.11445016e28;-9.39921508e20;-1.8331477e27:33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1.86389771e-20", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.toast('Flash Speed Deactivated!')
end

function DACIA()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('1000;10;4D;4D;50;5;2;0.03::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.03', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.03', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.03', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(280)
gg.editAll('-0.23', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Speed Dacia activated!')
end

function FIXFLASH()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
gg.searchNumber("-6.1526231e27;-1.0070975e28::",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("-6.1526231e27",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1)
gg.editAll("0",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Fix Flash Activated!')
end

function SITSCOPEON()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-0.67914116382599;-0.20633073151112;-0.68966287374496;9.49029350281;0.0064272880554199", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(0)
gg.searchNumber("9.49029350281", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(500)
gg.editAll("124", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Sit Scope activated!')
end

function STANDSCOPEON()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4138667321167981973', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4138667321167981973', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4138667321167981973', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('4848124999984742400', gg.TYPE_QWORD)
gg.clearResults()
gg.toast('Sit Scope Front activated!')
end

function SITSCOPEOFF()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-0.67914116382599;-0.20633073151112;-0.68966287374496;124;0.0064272880554199", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(0)
gg.searchNumber("124", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(500)
gg.editAll("9.49029350281", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Sit Scope Deactivated!')
end

function STANDSCOPEOFF()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4848124999984742400', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4848124999984742400', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4848124999984742400', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('4138667321167981973', gg.TYPE_QWORD)
gg.clearResults()
gg.toast('Stand Scope Deactivated!')
end


function EXY1()
EXY1MN = gg.choice({
"📱 『 ول هاك اكسينوس 8895 』",
"☣️ 『 لون أصفر 』",
"⚪ 『 لون أبيض لجميع الأجهزة 』",
"⚫ 『 لون أسود لجميع الأجهزة 』",
"⁦➡️⁩ 『 رجوع 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if EXY1MN == nil then else
if EXY1MN == 1 then EXY8895() end
if EXY1MN == 2 then EXYYELL() end
if EXY1MN == 3 then WHITEALL() end
if EXY1MN == 4 then BLACKALL() end
if EXY1MN == 5 then BDY() end
end
PUBGMH = -1
end

function EXY2()
EXY2MN = gg.choice({
"📱 『 ᴡᴀʟʟʜᴀᴄᴋ ᴇxʏɴᴏs 8895 』",
"☣️ 『 ʏᴇʟʟᴏᴡ ʙᴏᴅʏ ᴄᴏʟᴏʀ 』",
"⚪ 『 ᴡʜɪᴛᴇ ʙᴏᴅʏ ᴀʟʟ 』",
"⚫ 『 ʙʟᴀᴄᴋ ʙᴏᴅʏ ᴀʟʟ 』",
"⬅️ 『 ʙ ᴀ ᴄ ᴋ 』",
  }, nil, "╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
if EXY2MN == nil then else
if EXY2MN == 1 then EXY8895() end
if EXY2MN == 2 then EXYYELL() end
if EXY2MN == 3 then WHITEALL() end
if EXY2MN == 4 then BLACKALL() end
if EXY2MN == 3 then BDY2() end
end
PUBGMH = -1
end

function EXY8895()
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearResults()
gg.searchNumber("3.9236357e-43F;2.24207754e-44F;4.31599927e-43F;2.24207754e-44F;1.79366203e-43F;3.58732407e-43F;0.5F:489", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(25, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(25, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_FLOAT then
v.value = "2"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
end

function EXYYELL()
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearResults()
gg.searchNumber("12D;64D;16D;32D;3162688022693019688Q;48D;16D;64D;16D;128D::649", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("3162688022693019688", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11)
gg.editAll("36", gg.TYPE_QWORD)
gg.clearResults()
end

-- -- -- -- -- -- -- -- -- -- --   Close   -- -- -- -- -- -- -- -- -- -- --

function CLOSE()
  print("╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n\n             ♔🔸〘 SenioR-M10 〙🔸♔\n🔸 Telegram ⟮ @senior_m10 ⟯ للتواصل 🔸 \n\n╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")
  gg.skipRestoreState()
  gg.setVisible(true)
  os.exit()
end
while true do
  if gg.isVisible(true) then
    PUBGMH = 1
    gg.setVisible(false)
  end
if PUBGMH == 1 and CMENU == 0 then
    HOME()
  end
  if PUBGMH == 1 and CMENU == 1 then
    HOME1()
  end
  if PUBGMH == 1 and CMENU == 2 then
    HOME2()
  end
end