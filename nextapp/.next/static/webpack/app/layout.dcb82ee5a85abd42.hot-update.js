"use strict";
/*
 * ATTENTION: An "eval-source-map" devtool has been used.
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file with attached SourceMaps in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
self["webpackHotUpdate_N_E"]("app/layout",{

/***/ "(app-pages-browser)/./app/component/Activity.js":
/*!***********************************!*\
  !*** ./app/component/Activity.js ***!
  \***********************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

eval(__webpack_require__.ts("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! react/jsx-dev-runtime */ \"(app-pages-browser)/./node_modules/next/dist/compiled/react/jsx-dev-runtime.js\");\n/* harmony import */ var activity_detector__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! activity-detector */ \"(app-pages-browser)/./node_modules/activity-detector/dist/activity-detector.js\");\n/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! react */ \"(app-pages-browser)/./node_modules/next/dist/compiled/react/index.js\");\n/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(react__WEBPACK_IMPORTED_MODULE_2__);\n/* harmony import */ var react_redux__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! react-redux */ \"(app-pages-browser)/./node_modules/react-redux/dist/react-redux.mjs\");\n/* harmony import */ var _redux_reducer_login__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../redux/reducer/login */ \"(app-pages-browser)/./app/redux/reducer/login.js\");\n/* harmony import */ var next_navigation__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! next/navigation */ \"(app-pages-browser)/./node_modules/next/navigation.js\");\n/* harmony import */ var next_navigation__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(next_navigation__WEBPACK_IMPORTED_MODULE_4__);\n/* __next_internal_client_entry_do_not_use__ default auto */ \nvar _s = $RefreshSig$();\n\n\n\n\n\n\nconst Activity = ()=>{\n    _s();\n    const dispatch = (0,react_redux__WEBPACK_IMPORTED_MODULE_5__.useDispatch)();\n    const router = (0,next_navigation__WEBPACK_IMPORTED_MODULE_4__.useRouter)();\n    const isUserLoggedIn = (0,react_redux__WEBPACK_IMPORTED_MODULE_5__.useSelector)((state)=>state.login.isUserLoggedIn);\n    const activityDetector = (0,activity_detector__WEBPACK_IMPORTED_MODULE_1__[\"default\"])({\n        timeToIdle: 300000\n    });\n    activityDetector.on(\"idle\", ()=>{\n        console.log(\"The user is not interacting with the page\");\n        //let userData = localStorage.getItem(\"token\");\n        //const jsonObject = JSON.parse(userData);\n        //console.log(jsonObject.token);\n        if (isUserLoggedIn) {\n            dispatch((0,_redux_reducer_login__WEBPACK_IMPORTED_MODULE_3__.logout)());\n            localStorage.removeItem(\"token\");\n            setTimeout(()=>{\n                router.push(\"/\");\n            }, 5000);\n        }\n    });\n    return /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.Fragment, {}, void 0, false);\n};\n_s(Activity, \"mASsvU4tHRHFse9vyTFm9PNRRKY=\", false, function() {\n    return [\n        react_redux__WEBPACK_IMPORTED_MODULE_5__.useDispatch,\n        next_navigation__WEBPACK_IMPORTED_MODULE_4__.useRouter,\n        react_redux__WEBPACK_IMPORTED_MODULE_5__.useSelector\n    ];\n});\n_c = Activity;\n/* harmony default export */ __webpack_exports__[\"default\"] = (Activity);\nvar _c;\n$RefreshReg$(_c, \"Activity\");\n\n\n;\n    // Wrapped in an IIFE to avoid polluting the global scope\n    ;\n    (function () {\n        var _a, _b;\n        // Legacy CSS implementations will `eval` browser code in a Node.js context\n        // to extract CSS. For backwards compatibility, we need to check we're in a\n        // browser context before continuing.\n        if (typeof self !== 'undefined' &&\n            // AMP / No-JS mode does not inject these helpers:\n            '$RefreshHelpers$' in self) {\n            // @ts-ignore __webpack_module__ is global\n            var currentExports = module.exports;\n            // @ts-ignore __webpack_module__ is global\n            var prevSignature = (_b = (_a = module.hot.data) === null || _a === void 0 ? void 0 : _a.prevSignature) !== null && _b !== void 0 ? _b : null;\n            // This cannot happen in MainTemplate because the exports mismatch between\n            // templating and execution.\n            self.$RefreshHelpers$.registerExportsForReactRefresh(currentExports, module.id);\n            // A module can be accepted automatically based on its exports, e.g. when\n            // it is a Refresh Boundary.\n            if (self.$RefreshHelpers$.isReactRefreshBoundary(currentExports)) {\n                // Save the previous exports signature on update so we can compare the boundary\n                // signatures. We avoid saving exports themselves since it causes memory leaks (https://github.com/vercel/next.js/pull/53797)\n                module.hot.dispose(function (data) {\n                    data.prevSignature =\n                        self.$RefreshHelpers$.getRefreshBoundarySignature(currentExports);\n                });\n                // Unconditionally accept an update to this module, we'll check if it's\n                // still a Refresh Boundary later.\n                // @ts-ignore importMeta is replaced in the loader\n                module.hot.accept();\n                // This field is set when the previous version of this module was a\n                // Refresh Boundary, letting us know we need to check for invalidation or\n                // enqueue an update.\n                if (prevSignature !== null) {\n                    // A boundary can become ineligible if its exports are incompatible\n                    // with the previous exports.\n                    //\n                    // For example, if you add/remove/change exports, we'll want to\n                    // re-execute the importing modules, and force those components to\n                    // re-render. Similarly, if you convert a class component to a\n                    // function, we want to invalidate the boundary.\n                    if (self.$RefreshHelpers$.shouldInvalidateReactRefreshBoundary(prevSignature, self.$RefreshHelpers$.getRefreshBoundarySignature(currentExports))) {\n                        module.hot.invalidate();\n                    }\n                    else {\n                        self.$RefreshHelpers$.scheduleUpdate();\n                    }\n                }\n            }\n            else {\n                // Since we just executed the code for the module, it's possible that the\n                // new exports made it ineligible for being a boundary.\n                // We only care about the case when we were _previously_ a boundary,\n                // because we already accepted this update (accidental side effect).\n                var isNoLongerABoundary = prevSignature !== null;\n                if (isNoLongerABoundary) {\n                    module.hot.invalidate();\n                }\n            }\n        }\n    })();\n//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiKGFwcC1wYWdlcy1icm93c2VyKS8uL2FwcC9jb21wb25lbnQvQWN0aXZpdHkuanMiLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7QUFDdUQ7QUFDckI7QUFDUTtBQUNBO0FBQ007QUFDSjtBQUU1QyxNQUFNTSxXQUFXOztJQUNmLE1BQU1DLFdBQVdKLHdEQUFXQTtJQUM1QixNQUFNSyxTQUFTSCwwREFBU0E7SUFDeEIsTUFBTUksaUJBQWlCUCx3REFBV0EsQ0FBQyxDQUFDUSxRQUFVQSxNQUFNQyxLQUFLLENBQUNGLGNBQWM7SUFDeEUsTUFBTUcsbUJBQW1CWiw2REFBc0JBLENBQUM7UUFDOUNhLFlBQVk7SUFDZDtJQUVBRCxpQkFBaUJFLEVBQUUsQ0FBQyxRQUFRO1FBQzFCQyxRQUFRQyxHQUFHLENBQUM7UUFDWiwrQ0FBK0M7UUFDL0MsMENBQTBDO1FBQzFDLGdDQUFnQztRQUVoQyxJQUFJUCxnQkFBZ0I7WUFDbEJGLFNBQVNILDREQUFNQTtZQUNmYSxhQUFhQyxVQUFVLENBQUM7WUFDeEJDLFdBQVc7Z0JBQ1RYLE9BQU9ZLElBQUksQ0FBQztZQUNkLEdBQUc7UUFDTDtJQUNGO0lBRUEscUJBQU87QUFDVDtHQXhCTWQ7O1FBQ2FILG9EQUFXQTtRQUNiRSxzREFBU0E7UUFDREgsb0RBQVdBOzs7S0FIOUJJO0FBMEJOLCtEQUFlQSxRQUFRQSxFQUFDIiwic291cmNlcyI6WyJ3ZWJwYWNrOi8vX05fRS8uL2FwcC9jb21wb25lbnQvQWN0aXZpdHkuanM/Y2UxNyJdLCJzb3VyY2VzQ29udGVudCI6WyJcInVzZSBjbGllbnRcIjtcclxuaW1wb3J0IGNyZWF0ZUFjdGl2aXR5RGV0ZWN0b3IgZnJvbSBcImFjdGl2aXR5LWRldGVjdG9yXCI7XHJcbmltcG9ydCB7IHVzZUVmZmVjdCB9IGZyb20gXCJyZWFjdFwiO1xyXG5pbXBvcnQgeyB1c2VTZWxlY3RvciB9IGZyb20gXCJyZWFjdC1yZWR1eFwiO1xyXG5pbXBvcnQgeyB1c2VEaXNwYXRjaCB9IGZyb20gXCJyZWFjdC1yZWR1eFwiO1xyXG5pbXBvcnQgeyBsb2dvdXQgfSBmcm9tIFwiLi4vcmVkdXgvcmVkdWNlci9sb2dpblwiO1xyXG5pbXBvcnQgeyB1c2VSb3V0ZXIgfSBmcm9tIFwibmV4dC9uYXZpZ2F0aW9uXCI7XHJcblxyXG5jb25zdCBBY3Rpdml0eSA9ICgpID0+IHtcclxuICBjb25zdCBkaXNwYXRjaCA9IHVzZURpc3BhdGNoKCk7XHJcbiAgY29uc3Qgcm91dGVyID0gdXNlUm91dGVyKCk7XHJcbiAgY29uc3QgaXNVc2VyTG9nZ2VkSW4gPSB1c2VTZWxlY3Rvcigoc3RhdGUpID0+IHN0YXRlLmxvZ2luLmlzVXNlckxvZ2dlZEluKTtcclxuICBjb25zdCBhY3Rpdml0eURldGVjdG9yID0gY3JlYXRlQWN0aXZpdHlEZXRlY3Rvcih7XHJcbiAgICB0aW1lVG9JZGxlOiAzMDAwMDAsIC8vIHdhaXQgMjBzIG9mIGluYWN0aXZpdHkgdG8gY29uc2lkZXIgdGhlIHVzZXIgaXMgaWRsZSAzMDAwMDBcclxuICB9KTtcclxuXHJcbiAgYWN0aXZpdHlEZXRlY3Rvci5vbihcImlkbGVcIiwgKCkgPT4ge1xyXG4gICAgY29uc29sZS5sb2coXCJUaGUgdXNlciBpcyBub3QgaW50ZXJhY3Rpbmcgd2l0aCB0aGUgcGFnZVwiKTtcclxuICAgIC8vbGV0IHVzZXJEYXRhID0gbG9jYWxTdG9yYWdlLmdldEl0ZW0oXCJ0b2tlblwiKTtcclxuICAgIC8vY29uc3QganNvbk9iamVjdCA9IEpTT04ucGFyc2UodXNlckRhdGEpO1xyXG4gICAgLy9jb25zb2xlLmxvZyhqc29uT2JqZWN0LnRva2VuKTtcclxuXHJcbiAgICBpZiAoaXNVc2VyTG9nZ2VkSW4pIHtcclxuICAgICAgZGlzcGF0Y2gobG9nb3V0KCkpO1xyXG4gICAgICBsb2NhbFN0b3JhZ2UucmVtb3ZlSXRlbShcInRva2VuXCIpO1xyXG4gICAgICBzZXRUaW1lb3V0KCgpID0+IHtcclxuICAgICAgICByb3V0ZXIucHVzaChcIi9cIik7XHJcbiAgICAgIH0sIDUwMDApO1xyXG4gICAgfVxyXG4gIH0pO1xyXG5cclxuICByZXR1cm4gPD48Lz47XHJcbn07XHJcblxyXG5leHBvcnQgZGVmYXVsdCBBY3Rpdml0eTtcclxuIl0sIm5hbWVzIjpbImNyZWF0ZUFjdGl2aXR5RGV0ZWN0b3IiLCJ1c2VFZmZlY3QiLCJ1c2VTZWxlY3RvciIsInVzZURpc3BhdGNoIiwibG9nb3V0IiwidXNlUm91dGVyIiwiQWN0aXZpdHkiLCJkaXNwYXRjaCIsInJvdXRlciIsImlzVXNlckxvZ2dlZEluIiwic3RhdGUiLCJsb2dpbiIsImFjdGl2aXR5RGV0ZWN0b3IiLCJ0aW1lVG9JZGxlIiwib24iLCJjb25zb2xlIiwibG9nIiwibG9jYWxTdG9yYWdlIiwicmVtb3ZlSXRlbSIsInNldFRpbWVvdXQiLCJwdXNoIl0sInNvdXJjZVJvb3QiOiIifQ==\n//# sourceURL=webpack-internal:///(app-pages-browser)/./app/component/Activity.js\n"));

/***/ })

});